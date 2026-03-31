import 'dart:async';
import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionsService {
  PermissionsService._internal();

  static final PermissionsService _instance = PermissionsService._internal();

  factory PermissionsService() {
    _instance.init();
    return _instance;
  }

  bool _isInit = false;
  bool? _hasExternalStoragePermission;
  bool get hasExternalStoragePermission =>
      _hasExternalStoragePermission ?? false;

  final Completer<AndroidDeviceInfo> _androidInfoCompleter = Completer();

  Future<void> init() async {
    if (_isInit) return;
    _isInit = true;

    if (Platform.isAndroid) {
      final androidInfo = await DeviceInfoPlugin().androidInfo;
      _androidInfoCompleter.complete(androidInfo);
    }
  }

  Future<bool> askForPermissions() async {
    if (_hasExternalStoragePermission != null) {
      return _hasExternalStoragePermission!;
    }
    if (Platform.isAndroid) {
      final androidInfo = await _androidInfoCompleter.future;
      final sdkInt = androidInfo.version.sdkInt;
      PermissionStatus storage = await Permission.storage.status;

      if (sdkInt >= 30) {
        PermissionStatus storageExternal =
            await Permission.manageExternalStorage.status;
        if (storageExternal != PermissionStatus.granted) {
          await Permission.manageExternalStorage.request();
        }

        storageExternal = await Permission.manageExternalStorage.status;

        if (storageExternal == PermissionStatus.granted) {
          _hasExternalStoragePermission = true;
        }

        // (SDK < 30)
        storage = await Permission.storage.status;
        if (storage != PermissionStatus.granted) {
          _hasExternalStoragePermission = true;
        }
      }
    }
    return _hasExternalStoragePermission ?? false;
  }
}
