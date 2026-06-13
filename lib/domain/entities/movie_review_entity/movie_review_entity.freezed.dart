// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_review_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MovieReviewEntity {

 int get id; List<MovieReviewDetailEntity> get results;
/// Create a copy of MovieReviewEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieReviewEntityCopyWith<MovieReviewEntity> get copyWith => _$MovieReviewEntityCopyWithImpl<MovieReviewEntity>(this as MovieReviewEntity, _$identity);

  /// Serializes this MovieReviewEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieReviewEntity&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.results, results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(results));

@override
String toString() {
  return 'MovieReviewEntity(id: $id, results: $results)';
}


}

/// @nodoc
abstract mixin class $MovieReviewEntityCopyWith<$Res>  {
  factory $MovieReviewEntityCopyWith(MovieReviewEntity value, $Res Function(MovieReviewEntity) _then) = _$MovieReviewEntityCopyWithImpl;
@useResult
$Res call({
 int id, List<MovieReviewDetailEntity> results
});




}
/// @nodoc
class _$MovieReviewEntityCopyWithImpl<$Res>
    implements $MovieReviewEntityCopyWith<$Res> {
  _$MovieReviewEntityCopyWithImpl(this._self, this._then);

  final MovieReviewEntity _self;
  final $Res Function(MovieReviewEntity) _then;

/// Create a copy of MovieReviewEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? results = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<MovieReviewDetailEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [MovieReviewEntity].
extension MovieReviewEntityPatterns on MovieReviewEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MovieReviewEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MovieReviewEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MovieReviewEntity value)  $default,){
final _that = this;
switch (_that) {
case _MovieReviewEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MovieReviewEntity value)?  $default,){
final _that = this;
switch (_that) {
case _MovieReviewEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  List<MovieReviewDetailEntity> results)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MovieReviewEntity() when $default != null:
return $default(_that.id,_that.results);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  List<MovieReviewDetailEntity> results)  $default,) {final _that = this;
switch (_that) {
case _MovieReviewEntity():
return $default(_that.id,_that.results);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  List<MovieReviewDetailEntity> results)?  $default,) {final _that = this;
switch (_that) {
case _MovieReviewEntity() when $default != null:
return $default(_that.id,_that.results);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MovieReviewEntity extends MovieReviewEntity {
  const _MovieReviewEntity({this.id = 0, final  List<MovieReviewDetailEntity> results = const <MovieReviewDetailEntity>[]}): _results = results,super._();
  factory _MovieReviewEntity.fromJson(Map<String, dynamic> json) => _$MovieReviewEntityFromJson(json);

@override@JsonKey() final  int id;
 final  List<MovieReviewDetailEntity> _results;
@override@JsonKey() List<MovieReviewDetailEntity> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}


/// Create a copy of MovieReviewEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieReviewEntityCopyWith<_MovieReviewEntity> get copyWith => __$MovieReviewEntityCopyWithImpl<_MovieReviewEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MovieReviewEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovieReviewEntity&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._results, _results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_results));

@override
String toString() {
  return 'MovieReviewEntity(id: $id, results: $results)';
}


}

/// @nodoc
abstract mixin class _$MovieReviewEntityCopyWith<$Res> implements $MovieReviewEntityCopyWith<$Res> {
  factory _$MovieReviewEntityCopyWith(_MovieReviewEntity value, $Res Function(_MovieReviewEntity) _then) = __$MovieReviewEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, List<MovieReviewDetailEntity> results
});




}
/// @nodoc
class __$MovieReviewEntityCopyWithImpl<$Res>
    implements _$MovieReviewEntityCopyWith<$Res> {
  __$MovieReviewEntityCopyWithImpl(this._self, this._then);

  final _MovieReviewEntity _self;
  final $Res Function(_MovieReviewEntity) _then;

/// Create a copy of MovieReviewEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? results = null,}) {
  return _then(_MovieReviewEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<MovieReviewDetailEntity>,
  ));
}


}

// dart format on
