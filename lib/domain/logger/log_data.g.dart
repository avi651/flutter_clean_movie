// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LogDataBase _$LogDataBaseFromJson(Map<String, dynamic> json) => LogDataBase(
  datetime: DateTime.parse(json['datetime'] as String),
  level: $enumDecode(_$LogLevelEnumMap, json['level']),
  message: json['message'] as String,
  locationRoute: json['locationRoute'] as String?,
  context: json['context'] as String?,
  details: json['details'],
  stacktrace: json['stacktrace'] as String?,
  payload: json['payload'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$LogDataBaseToJson(LogDataBase instance) =>
    <String, dynamic>{
      'datetime': JsonHelpers.dateTimeToStringTimestamp(instance.datetime),
      'level': _$LogLevelEnumMap[instance.level]!,
      'message': instance.message,
      'locationRoute': instance.locationRoute,
      'context': instance.context,
      'details': instance.details,
      'stacktrace': instance.stacktrace,
      'payload': instance.payload,
    };

const _$LogLevelEnumMap = {
  LogLevel.error: 'error',
  LogLevel.critical: 'critical',
  LogLevel.info: 'info',
  LogLevel.warning: 'warning',
  LogLevel.debug: 'debug',
  LogLevel.verbose: 'verbose',
};
