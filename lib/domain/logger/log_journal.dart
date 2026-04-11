import 'dart:async';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:intl/intl.dart';
import 'package:movie_clean/domain/logger/log_data.dart';
import 'package:path_provider/path_provider.dart';

class LogJournal {
  LogJournal._internal();
  static final LogJournal _instance = LogJournal._internal();

  factory LogJournal() => _instance;

  late final StreamController<LogData> _streamController;
  late final IOSink _sink;
  late final File _file;

  bool _isFileEmpty = true;

  final Completer<Directory> _dirCompleter = Completer<Directory>();
  Option<Directory> _maybeDirectory = none();

  /// PUBLIC API

  Future<void> init() async {
    final dir = await _getOrCreateDirectory();

    final date = DateFormat('yyyy-MM-dd').format(DateTime.now());
    _file = File('${dir.path}/$date.txt');

    final exists = await _file.exists();
    final length = exists ? await _file.length() : 0;
    _isFileEmpty = length == 0;

    _sink = _file.openWrite(mode: FileMode.append);

    _streamController = StreamController<LogData>();
    _streamController.stream.listen(_onLogData);
  }

  Future<void> write(LogData data) async {
    _streamController.add(data);
  }

  Future<void> dispose() async {
    await _streamController.close();
    await _sink.flush();
    await _sink.close();
  }

  /// INTERNALS

  Future<void> _onLogData(LogData data) async {
    String separator = _isFileEmpty ? "" : ",\n";

    if (_isFileEmpty) {
      _isFileEmpty = false;
    }

    final formattedJson = separator + data.toFormattedJson();
    _sink.write(formattedJson);
  }

  /// DIRECTORY HANDLING (SAFE)

  Future<Directory> _getOrCreateDirectory() async {
    if (_maybeDirectory.isSome()) {
      return _maybeDirectory.getOrElse(() => throw Exception());
    }

    if (_dirCompleter.isCompleted) {
      return _dirCompleter.future;
    }

    try {
      // ✅ BEST PRACTICE: system-provided directory
      final baseDir = await getExternalStorageDirectory();

      if (baseDir == null) {
        throw Exception("External storage directory not available");
      }

      final logDir = Directory('${baseDir.path}/logs');

      if (!await logDir.exists()) {
        await logDir.create(recursive: true);
      }

      _maybeDirectory = some(logDir);
      _dirCompleter.complete(logDir);

      return logDir;
    } catch (e) {
      _dirCompleter.completeError(e);
      rethrow;
    }
  }
}
