import 'package:movie_clean/core/services/typedef.dart';
import 'package:movie_clean/domain/logger/log_data.dart';

import 'logger_service.dart';

mixin LoggerMixin {
  String get logContext => runtimeType.toString();

  void log(LogData data) => logger.log(data.copyWith(context: logContext));

  void logVerbose(
    String message, {
    Object? details,
    String? stacktrace,
    Json? payload,
    bool display = true,
  }) => logger.verbose(
    message,
    context: logContext,
    stacktrace: stacktrace,
    payload: payload,
    display: display,
  );

  void logDebug(
    String message, {
    Object? details,
    String? stacktrace,
    Json? payload,
    bool display = true,
  }) => logger.debug(
    message,
    context: logContext,
    stacktrace: stacktrace,
    payload: payload,
    display: display,
  );

  void logInfo(
    String message, {
    Object? details,
    String? stacktrace,
    Json? payload,
    bool display = true,
  }) => logger.info(
    message,
    context: logContext,
    stacktrace: stacktrace,
    payload: payload,
    display: display,
  );

  void logWarning(
    String message, {
    Object? details,
    String? stacktrace,
    Json? payload,
    bool display = true,
  }) => logger.warning(
    message,
    context: logContext,
    stacktrace: stacktrace,
    payload: payload,
    display: display,
  );

  void logError(
    String message, {
    Object? details,
    String? stacktrace,
    Json? payload,
    bool display = true,
  }) => logger.error(
    message,
    context: logContext,
    stacktrace: stacktrace,
    payload: payload,
    display: display,
  );

  void logCritical(
    String message, {
    Object? details,
    String? stacktrace,
    Json? payload,
    bool display = true,
  }) => logger.critical(
    message,
    context: logContext,
    stacktrace: stacktrace,
    payload: payload,
    display: display,
  );
}
