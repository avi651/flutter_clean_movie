// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_cast_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MovieCastEntity {

 int get id; List<MovieCastDetailEntity> get cast;
/// Create a copy of MovieCastEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieCastEntityCopyWith<MovieCastEntity> get copyWith => _$MovieCastEntityCopyWithImpl<MovieCastEntity>(this as MovieCastEntity, _$identity);

  /// Serializes this MovieCastEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieCastEntity&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.cast, cast));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(cast));

@override
String toString() {
  return 'MovieCastEntity(id: $id, cast: $cast)';
}


}

/// @nodoc
abstract mixin class $MovieCastEntityCopyWith<$Res>  {
  factory $MovieCastEntityCopyWith(MovieCastEntity value, $Res Function(MovieCastEntity) _then) = _$MovieCastEntityCopyWithImpl;
@useResult
$Res call({
 int id, List<MovieCastDetailEntity> cast
});




}
/// @nodoc
class _$MovieCastEntityCopyWithImpl<$Res>
    implements $MovieCastEntityCopyWith<$Res> {
  _$MovieCastEntityCopyWithImpl(this._self, this._then);

  final MovieCastEntity _self;
  final $Res Function(MovieCastEntity) _then;

/// Create a copy of MovieCastEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? cast = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,cast: null == cast ? _self.cast : cast // ignore: cast_nullable_to_non_nullable
as List<MovieCastDetailEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [MovieCastEntity].
extension MovieCastEntityPatterns on MovieCastEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MovieCastEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MovieCastEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MovieCastEntity value)  $default,){
final _that = this;
switch (_that) {
case _MovieCastEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MovieCastEntity value)?  $default,){
final _that = this;
switch (_that) {
case _MovieCastEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  List<MovieCastDetailEntity> cast)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MovieCastEntity() when $default != null:
return $default(_that.id,_that.cast);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  List<MovieCastDetailEntity> cast)  $default,) {final _that = this;
switch (_that) {
case _MovieCastEntity():
return $default(_that.id,_that.cast);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  List<MovieCastDetailEntity> cast)?  $default,) {final _that = this;
switch (_that) {
case _MovieCastEntity() when $default != null:
return $default(_that.id,_that.cast);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MovieCastEntity extends MovieCastEntity {
  const _MovieCastEntity({required this.id, final  List<MovieCastDetailEntity> cast = const <MovieCastDetailEntity>[]}): _cast = cast,super._();
  factory _MovieCastEntity.fromJson(Map<String, dynamic> json) => _$MovieCastEntityFromJson(json);

@override final  int id;
 final  List<MovieCastDetailEntity> _cast;
@override@JsonKey() List<MovieCastDetailEntity> get cast {
  if (_cast is EqualUnmodifiableListView) return _cast;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cast);
}


/// Create a copy of MovieCastEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieCastEntityCopyWith<_MovieCastEntity> get copyWith => __$MovieCastEntityCopyWithImpl<_MovieCastEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MovieCastEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovieCastEntity&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._cast, _cast));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_cast));

@override
String toString() {
  return 'MovieCastEntity(id: $id, cast: $cast)';
}


}

/// @nodoc
abstract mixin class _$MovieCastEntityCopyWith<$Res> implements $MovieCastEntityCopyWith<$Res> {
  factory _$MovieCastEntityCopyWith(_MovieCastEntity value, $Res Function(_MovieCastEntity) _then) = __$MovieCastEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, List<MovieCastDetailEntity> cast
});




}
/// @nodoc
class __$MovieCastEntityCopyWithImpl<$Res>
    implements _$MovieCastEntityCopyWith<$Res> {
  __$MovieCastEntityCopyWithImpl(this._self, this._then);

  final _MovieCastEntity _self;
  final $Res Function(_MovieCastEntity) _then;

/// Create a copy of MovieCastEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? cast = null,}) {
  return _then(_MovieCastEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,cast: null == cast ? _self._cast : cast // ignore: cast_nullable_to_non_nullable
as List<MovieCastDetailEntity>,
  ));
}


}

// dart format on
