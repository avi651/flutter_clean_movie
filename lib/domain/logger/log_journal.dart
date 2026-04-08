import 'dart:async';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:intl/intl.dart';
import 'package:movie_clean/core/shared/permission_service.dart';
import 'package:movie_clean/domain/logger/log_data.dart';
import 'package:path_provider/path_provider.dart' as path;

class LogJournal {
  LogJournal._internal();

  static final LogJournal _instance = LogJournal._internal();

  factory LogJournal() {
    return _instance;
  }

  late final StreamController<LogData> _streamController;
  late final IOSink _sink;
  bool _isFileEmpty = true;

  FutureOr<void> write(LogData data) async {
    _streamController.add(data);
  }

  Future<void> _onLogData(LogData data) async {
    String separator = ",\n";
    if (_isFileEmpty) {
      _isFileEmpty = false;
      separator = "";
    }

    final String formattedJson = separator + data.toFormattedJson();

    _sink.write(formattedJson);
  }

  Future<void> init() async {
    _file = await _getLogFile();
    _isFileEmpty = (await _file.exists());
    _isFileEmpty = !_isFileEmpty || (await _file.length()) == 0;

    _sink = _file.openWrite(mode: FileMode.append);

    _streamController = StreamController<LogData>();
    _streamController.stream.listen(_onLogData);
  }

  Future<void> dispose() async {
    await _streamController.close();
    await _sink.close();
  }

  /// File Handling

  late final File _file;

  final Completer<Directory?> _externalStorageDirCompleter =
      Completer<Directory?>();

  Option<Directory> _maybeDirectory = none();

  Future<Directory?> _getExternalStorageDirectory() async {
    if (_externalStorageDirCompleter.isCompleted) {
      return _externalStorageDirCompleter.future;
    }

    final dir = await path.getExternalStorageDirectory();
    _externalStorageDirCompleter.complete(dir);
    return dir;
  }

  Future<void> _createDirectory(Directory dir) async {
    if (_maybeDirectory.isSome()) {
      return;
    }
    final dirCreated = await dir.exists();
    if (!dirCreated) {
      final dir0 = await dir.create(recursive: true);
      _maybeDirectory = some(dir0);
    }
  }

  Future<String?> _getLocalPath() async {
    return _maybeDirectory.fold(() async {
      late Directory dir;
      if (PermissionsService().hasExternalStoragePermission) {
        dir = Directory('/storage/emulated/data/files');
      } else {
        final extDir = await _getExternalStorageDirectory();
        if (extDir == null) return null;
        dir = Directory(extDir.path);
      }
      _createDirectory(dir);

      return dir.path;
    }, (dir) => dir.path);
  }

  Future<File> _getLogFile() async {
    final path = await _getLocalPath();
    if (path == null) {
      throw Exception("Could not get local path logs");
    }
    final date = DateFormat('yyyy-MM-dd').format(DateTime.now());
    return File('$path/$date.txt');
  }
}
