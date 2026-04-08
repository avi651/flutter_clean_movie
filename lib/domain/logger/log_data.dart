import 'dart:convert' as convert;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:movie_clean/core/services/typedef.dart';
import 'package:movie_clean/core/shared/json_helpers.dart';
import 'package:movie_clean/domain/logger/log_level.dart';
import 'package:movie_clean/core/shared/extensions/nullable_extensions.dart';

part 'log_data.freezed.dart';
part 'log_data.g.dart';

const encoder = convert.JsonEncoder.withIndent(' ');

@freezed
abstract class LogData with _$LogData {
  const LogData._();

  const factory LogData.base({
    @JsonKey(toJson: JsonHelpers.dateTimeToStringTimestamp)
    required DateTime datetime,
    required LogLevel level,
    required String message,
    @JsonKey(includeToJson: false, includeFromJson: false) bool? display,
    String? locationRoute,
    String? context,
    Object? details,
    String? stacktrace,
    Json? payload,
  }) = LogDataBase;

  factory LogData({
    required LogLevel level,
    required String message,
    String? locationCd,
    String? routeNbr,
    String? raasVersion,
    String? context,
    Object? details,
    String? stacktrace,
    Json? payload,
    bool display = true,
  }) => LogDataBase(
    datetime: DateTime.now(),
    level: level,
    message: message,
    locationRoute: "$locationCd|$routeNbr|$raasVersion",
    context: context,
    details: details,
    stacktrace: stacktrace,
    payload: payload,
    display: display,
  );

  factory LogData.fromJson(Map<String, dynamic> json) =>
      _$LogDataFromJson(json);

  String formmatedLogLine(bool detailed) {
    final timestamp = DateFormat('yyyy-MM-dd HH:mm:ss').format(datetime);
    return <String?>[
      timestamp,
      level.name,
      locationRoute,
      message,
      context,
      details?.toString(),
      stacktrace,
      payload?.nmap<String>((e) => convert.jsonEncode(e)),
    ].map((e) => (e ?? "")).join("|").replaceAll("\n", "");
  }

  String toFormattedJson() => encoder.convert(toJson());

  String toConsoleString() {
    return [
      "[${level.name}] Context: $context",
      message,
      if (details != null) ...["Details", details.toString()],
      if (payload != null) ...["Payload", convert.jsonEncode(payload)],
      if (stacktrace != null) ...["Stacktrace", stacktrace],
    ].join("\n");
  }
}
