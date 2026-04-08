// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'log_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
LogData _$LogDataFromJson(
  Map<String, dynamic> json
) {
    return LogDataBase.fromJson(
      json
    );
}

/// @nodoc
mixin _$LogData {

@JsonKey(toJson: JsonHelpers.dateTimeToStringTimestamp) DateTime get datetime; LogLevel get level; String get message;@JsonKey(includeToJson: false, includeFromJson: false) bool? get display; String? get locationRoute; String? get context; Object? get details; String? get stacktrace; Json? get payload;
/// Create a copy of LogData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LogDataCopyWith<LogData> get copyWith => _$LogDataCopyWithImpl<LogData>(this as LogData, _$identity);

  /// Serializes this LogData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LogData&&(identical(other.datetime, datetime) || other.datetime == datetime)&&(identical(other.level, level) || other.level == level)&&(identical(other.message, message) || other.message == message)&&(identical(other.display, display) || other.display == display)&&(identical(other.locationRoute, locationRoute) || other.locationRoute == locationRoute)&&(identical(other.context, context) || other.context == context)&&const DeepCollectionEquality().equals(other.details, details)&&(identical(other.stacktrace, stacktrace) || other.stacktrace == stacktrace)&&const DeepCollectionEquality().equals(other.payload, payload));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,datetime,level,message,display,locationRoute,context,const DeepCollectionEquality().hash(details),stacktrace,const DeepCollectionEquality().hash(payload));

@override
String toString() {
  return 'LogData(datetime: $datetime, level: $level, message: $message, display: $display, locationRoute: $locationRoute, context: $context, details: $details, stacktrace: $stacktrace, payload: $payload)';
}


}

/// @nodoc
abstract mixin class $LogDataCopyWith<$Res>  {
  factory $LogDataCopyWith(LogData value, $Res Function(LogData) _then) = _$LogDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(toJson: JsonHelpers.dateTimeToStringTimestamp) DateTime datetime, LogLevel level, String message,@JsonKey(includeToJson: false, includeFromJson: false) bool? display, String? locationRoute, String? context, Object? details, String? stacktrace, Json? payload
});




}
/// @nodoc
class _$LogDataCopyWithImpl<$Res>
    implements $LogDataCopyWith<$Res> {
  _$LogDataCopyWithImpl(this._self, this._then);

  final LogData _self;
  final $Res Function(LogData) _then;

/// Create a copy of LogData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? datetime = null,Object? level = null,Object? message = null,Object? display = freezed,Object? locationRoute = freezed,Object? context = freezed,Object? details = freezed,Object? stacktrace = freezed,Object? payload = freezed,}) {
  return _then(_self.copyWith(
datetime: null == datetime ? _self.datetime : datetime // ignore: cast_nullable_to_non_nullable
as DateTime,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as LogLevel,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,display: freezed == display ? _self.display : display // ignore: cast_nullable_to_non_nullable
as bool?,locationRoute: freezed == locationRoute ? _self.locationRoute : locationRoute // ignore: cast_nullable_to_non_nullable
as String?,context: freezed == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as String?,details: freezed == details ? _self.details : details ,stacktrace: freezed == stacktrace ? _self.stacktrace : stacktrace // ignore: cast_nullable_to_non_nullable
as String?,payload: freezed == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as Json?,
  ));
}

}


/// Adds pattern-matching-related methods to [LogData].
extension LogDataPatterns on LogData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LogDataBase value)?  base,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LogDataBase() when base != null:
return base(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LogDataBase value)  base,}){
final _that = this;
switch (_that) {
case LogDataBase():
return base(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LogDataBase value)?  base,}){
final _that = this;
switch (_that) {
case LogDataBase() when base != null:
return base(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function(@JsonKey(toJson: JsonHelpers.dateTimeToStringTimestamp)  DateTime datetime,  LogLevel level,  String message, @JsonKey(includeToJson: false, includeFromJson: false)  bool? display,  String? locationRoute,  String? context,  Object? details,  String? stacktrace,  Json? payload)?  base,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LogDataBase() when base != null:
return base(_that.datetime,_that.level,_that.message,_that.display,_that.locationRoute,_that.context,_that.details,_that.stacktrace,_that.payload);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function(@JsonKey(toJson: JsonHelpers.dateTimeToStringTimestamp)  DateTime datetime,  LogLevel level,  String message, @JsonKey(includeToJson: false, includeFromJson: false)  bool? display,  String? locationRoute,  String? context,  Object? details,  String? stacktrace,  Json? payload)  base,}) {final _that = this;
switch (_that) {
case LogDataBase():
return base(_that.datetime,_that.level,_that.message,_that.display,_that.locationRoute,_that.context,_that.details,_that.stacktrace,_that.payload);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function(@JsonKey(toJson: JsonHelpers.dateTimeToStringTimestamp)  DateTime datetime,  LogLevel level,  String message, @JsonKey(includeToJson: false, includeFromJson: false)  bool? display,  String? locationRoute,  String? context,  Object? details,  String? stacktrace,  Json? payload)?  base,}) {final _that = this;
switch (_that) {
case LogDataBase() when base != null:
return base(_that.datetime,_that.level,_that.message,_that.display,_that.locationRoute,_that.context,_that.details,_that.stacktrace,_that.payload);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class LogDataBase extends LogData {
  const LogDataBase({@JsonKey(toJson: JsonHelpers.dateTimeToStringTimestamp) required this.datetime, required this.level, required this.message, @JsonKey(includeToJson: false, includeFromJson: false) this.display, this.locationRoute, this.context, this.details, this.stacktrace, final  Json? payload}): _payload = payload,super._();
  factory LogDataBase.fromJson(Map<String, dynamic> json) => _$LogDataBaseFromJson(json);

@override@JsonKey(toJson: JsonHelpers.dateTimeToStringTimestamp) final  DateTime datetime;
@override final  LogLevel level;
@override final  String message;
@override@JsonKey(includeToJson: false, includeFromJson: false) final  bool? display;
@override final  String? locationRoute;
@override final  String? context;
@override final  Object? details;
@override final  String? stacktrace;
 final  Json? _payload;
@override Json? get payload {
  final value = _payload;
  if (value == null) return null;
  if (_payload is EqualUnmodifiableMapView) return _payload;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of LogData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LogDataBaseCopyWith<LogDataBase> get copyWith => _$LogDataBaseCopyWithImpl<LogDataBase>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LogDataBaseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LogDataBase&&(identical(other.datetime, datetime) || other.datetime == datetime)&&(identical(other.level, level) || other.level == level)&&(identical(other.message, message) || other.message == message)&&(identical(other.display, display) || other.display == display)&&(identical(other.locationRoute, locationRoute) || other.locationRoute == locationRoute)&&(identical(other.context, context) || other.context == context)&&const DeepCollectionEquality().equals(other.details, details)&&(identical(other.stacktrace, stacktrace) || other.stacktrace == stacktrace)&&const DeepCollectionEquality().equals(other._payload, _payload));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,datetime,level,message,display,locationRoute,context,const DeepCollectionEquality().hash(details),stacktrace,const DeepCollectionEquality().hash(_payload));

@override
String toString() {
  return 'LogData.base(datetime: $datetime, level: $level, message: $message, display: $display, locationRoute: $locationRoute, context: $context, details: $details, stacktrace: $stacktrace, payload: $payload)';
}


}

/// @nodoc
abstract mixin class $LogDataBaseCopyWith<$Res> implements $LogDataCopyWith<$Res> {
  factory $LogDataBaseCopyWith(LogDataBase value, $Res Function(LogDataBase) _then) = _$LogDataBaseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(toJson: JsonHelpers.dateTimeToStringTimestamp) DateTime datetime, LogLevel level, String message,@JsonKey(includeToJson: false, includeFromJson: false) bool? display, String? locationRoute, String? context, Object? details, String? stacktrace, Json? payload
});




}
/// @nodoc
class _$LogDataBaseCopyWithImpl<$Res>
    implements $LogDataBaseCopyWith<$Res> {
  _$LogDataBaseCopyWithImpl(this._self, this._then);

  final LogDataBase _self;
  final $Res Function(LogDataBase) _then;

/// Create a copy of LogData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? datetime = null,Object? level = null,Object? message = null,Object? display = freezed,Object? locationRoute = freezed,Object? context = freezed,Object? details = freezed,Object? stacktrace = freezed,Object? payload = freezed,}) {
  return _then(LogDataBase(
datetime: null == datetime ? _self.datetime : datetime // ignore: cast_nullable_to_non_nullable
as DateTime,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as LogLevel,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,display: freezed == display ? _self.display : display // ignore: cast_nullable_to_non_nullable
as bool?,locationRoute: freezed == locationRoute ? _self.locationRoute : locationRoute // ignore: cast_nullable_to_non_nullable
as String?,context: freezed == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as String?,details: freezed == details ? _self.details : details ,stacktrace: freezed == stacktrace ? _self.stacktrace : stacktrace // ignore: cast_nullable_to_non_nullable
as String?,payload: freezed == payload ? _self._payload : payload // ignore: cast_nullable_to_non_nullable
as Json?,
  ));
}


}

// dart format on
