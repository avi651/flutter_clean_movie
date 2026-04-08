import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:movie_clean/core/services/typedef.dart';
import 'package:movie_clean/domain/logger/console_utils.dart';
import 'package:movie_clean/domain/logger/log_data.dart';
import 'package:movie_clean/domain/logger/log_level.dart';

abstract class ILoggerService {
  ILoggerService({required this.enableConsoleLog});
  final bool enableConsoleLog;

  final pattern = RegExp('.{1,800}');
  final int maxLineWidth = 110;

  void log(LogData data);

  FutureOr<dynamic> navigateToLogsScreen();

  bool shouldLog(LogData data);

  bool shouldConsoleLog(LogData data);

  void consoleLog(LogData data) {
    if (!shouldConsoleLog(data)) return;

    final selectedPen = data.level.pen;
    final formattedMsg = fmt(data);

    for (final line in formattedMsg.split('\n')) {
      for (final match in pattern.allMatches(line)) {
        final msg = selectedPen.write(match.group(0) ?? "");
        debugPrint(msg); // ✅ IMPORTANT
      }
    }
  }

  String fmt(LogData details) {
    final underline = ConsoleUtils.getUnderline(maxLineWidth, withCorner: true);
    final topline = ConsoleUtils.getUnderline(maxLineWidth, withCorner: true);

    final msgBorderedLines = details
        .toConsoleString()
        .split('\n')
        .map((e) => '| $e');

    var lines = [topline, ...msgBorderedLines, underline];
    lines = lines.map((e) => details.level.pen.write(e)).toList();
    final coloredMsg = lines.join('\n');
    return coloredMsg;
  }

  void critical(
    String message, {
    String? context,
    Object? details,
    String? stacktrace,
    Json? payload,
    bool display = true,
  }) => log(
    LogData(
      level: LogLevel.critical,
      message: message,
      context: context ?? currentPath,
      details: details,
      stacktrace: stacktrace,
      payload: payload,
      display: display,
    ),
  );

  void debug(
    String message, {
    String? context,
    Object? details,
    String? stacktrace,
    Json? payload,
    bool display = true,
  }) => log(
    LogData(
      level: LogLevel.debug,
      message: message,
      context: context ?? currentPath,
      details: details,
      stacktrace: stacktrace,
      payload: payload,
      display: display,
    ),
  );

  void error(
    String message, {
    String? context,
    Object? details,
    String? stacktrace,
    Json? payload,
    bool display = true,
  }) => log(
    LogData(
      level: LogLevel.error,
      message: message,
      context: context ?? currentPath,
      details: details,
      stacktrace: stacktrace,
      payload: payload,
      display: display,
    ),
  );

  void info(
    String message, {
    String? context,
    Object? details,
    String? stacktrace,
    Json? payload,
    bool display = true,
  }) => log(
    LogData(
      level: LogLevel.info,
      message: message,
      context: context ?? currentPath,
      details: details,
      stacktrace: stacktrace,
      payload: payload,
      display: display,
    ),
  );

  void verbose(
    String message, {
    String? context,
    Object? details,
    String? stacktrace,
    Json? payload,
    bool display = true,
  }) => log(
    LogData(
      level: LogLevel.verbose,
      message: message,
      context: context ?? currentPath,
      details: details,
      stacktrace: stacktrace,
      payload: payload,
      display: display,
    ),
  );

  void warning(
    String message, {
    String? context,
    Object? details,
    String? stacktrace,
    Json? payload,
    bool display = true,
  }) => log(
    LogData(
      level: LogLevel.warning,
      message: message,
      context: context ?? currentPath,
      details: details,
      stacktrace: stacktrace,
      payload: payload,
      display: display,
    ),
  );

  String get currentPath => Modular.to.path;
}
