import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:movie_clean/domain/logger/i_logger_service.dart';
import 'package:movie_clean/domain/logger/log_data.dart';
import 'package:movie_clean/domain/logger/log_level.dart';
import 'package:movie_clean/domain/logger/logger_cubit.dart';
import 'package:movie_clean/presentation/widgets/logs_page.dart';

import 'log_journal.dart';

ILoggerService get logger => LoggerService(logJournal: LogJournal());

void outputLog(String message) => message.split('\n').forEach(debugPrint);

class LoggerService extends ILoggerService {
  LoggerService({
    required this.logJournal,
    super.enableConsoleLog = kDebugMode,
  });

  final LogJournal logJournal;
  LoggerCubit? get loggerCubit => Modular.tryGet<LoggerCubit>();

  @override
  void log(LogData data) {
    if (shouldConsoleLog(data)) {
      consoleLog(data);
    }

    if (!shouldLog(data)) return;
    loggerCubit?.addLog(data);
    //if(Env.noLogJournal) return;
    logJournal.write(data);
  }

  @override
  FutureOr<dynamic> navigateToLogsScreen() {
    return Modular.to.pushNamed(LogPage.path);
  }

  @override
  bool shouldLog(LogData data) => switch (data.level) {
    LogLevel.verbose || LogLevel.debug => false,
    _ => true,
  };

  @override
  bool shouldConsoleLog(LogData data) {
    return true;
  }

  // @override
  // bool shouldConsoleLog(LogData data) => switch (data.level) {
  //   LogLevel.verbose || LogLevel.debug => Env.showDebugLogs || enableConsoleLog,
  //   _ => true && enableConsoleLog && data.display == true,
  // };
}
