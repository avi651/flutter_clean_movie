// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'proxy_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProxyData {

 bool get isProxyWorking;
/// Create a copy of ProxyData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProxyDataCopyWith<ProxyData> get copyWith => _$ProxyDataCopyWithImpl<ProxyData>(this as ProxyData, _$identity);

  /// Serializes this ProxyData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProxyData&&(identical(other.isProxyWorking, isProxyWorking) || other.isProxyWorking == isProxyWorking));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isProxyWorking);

@override
String toString() {
  return 'ProxyData(isProxyWorking: $isProxyWorking)';
}


}

/// @nodoc
abstract mixin class $ProxyDataCopyWith<$Res>  {
  factory $ProxyDataCopyWith(ProxyData value, $Res Function(ProxyData) _then) = _$ProxyDataCopyWithImpl;
@useResult
$Res call({
 bool isProxyWorking
});




}
/// @nodoc
class _$ProxyDataCopyWithImpl<$Res>
    implements $ProxyDataCopyWith<$Res> {
  _$ProxyDataCopyWithImpl(this._self, this._then);

  final ProxyData _self;
  final $Res Function(ProxyData) _then;

/// Create a copy of ProxyData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isProxyWorking = null,}) {
  return _then(_self.copyWith(
isProxyWorking: null == isProxyWorking ? _self.isProxyWorking : isProxyWorking // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ProxyData].
extension ProxyDataPatterns on ProxyData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProxyData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProxyData() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProxyData value)  $default,){
final _that = this;
switch (_that) {
case _ProxyData():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProxyData value)?  $default,){
final _that = this;
switch (_that) {
case _ProxyData() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isProxyWorking)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProxyData() when $default != null:
return $default(_that.isProxyWorking);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isProxyWorking)  $default,) {final _that = this;
switch (_that) {
case _ProxyData():
return $default(_that.isProxyWorking);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isProxyWorking)?  $default,) {final _that = this;
switch (_that) {
case _ProxyData() when $default != null:
return $default(_that.isProxyWorking);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProxyData extends ProxyData {
  const _ProxyData({this.isProxyWorking = true}): super._();
  factory _ProxyData.fromJson(Map<String, dynamic> json) => _$ProxyDataFromJson(json);

@override@JsonKey() final  bool isProxyWorking;

/// Create a copy of ProxyData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProxyDataCopyWith<_ProxyData> get copyWith => __$ProxyDataCopyWithImpl<_ProxyData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProxyDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProxyData&&(identical(other.isProxyWorking, isProxyWorking) || other.isProxyWorking == isProxyWorking));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isProxyWorking);

@override
String toString() {
  return 'ProxyData(isProxyWorking: $isProxyWorking)';
}


}

/// @nodoc
abstract mixin class _$ProxyDataCopyWith<$Res> implements $ProxyDataCopyWith<$Res> {
  factory _$ProxyDataCopyWith(_ProxyData value, $Res Function(_ProxyData) _then) = __$ProxyDataCopyWithImpl;
@override @useResult
$Res call({
 bool isProxyWorking
});




}
/// @nodoc
class __$ProxyDataCopyWithImpl<$Res>
    implements _$ProxyDataCopyWith<$Res> {
  __$ProxyDataCopyWithImpl(this._self, this._then);

  final _ProxyData _self;
  final $Res Function(_ProxyData) _then;

/// Create a copy of ProxyData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isProxyWorking = null,}) {
  return _then(_ProxyData(
isProxyWorking: null == isProxyWorking ? _self.isProxyWorking : isProxyWorking // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
