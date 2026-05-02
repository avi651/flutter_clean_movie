// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'popular_movie_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PopularMovieEntity {

 int get page; List<PopularMovieResultEntity> get results;@JsonKey(name: 'total_pages') int get totalPages;@JsonKey(name: 'total_results') int get totalResults;
/// Create a copy of PopularMovieEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PopularMovieEntityCopyWith<PopularMovieEntity> get copyWith => _$PopularMovieEntityCopyWithImpl<PopularMovieEntity>(this as PopularMovieEntity, _$identity);

  /// Serializes this PopularMovieEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PopularMovieEntity&&(identical(other.page, page) || other.page == page)&&const DeepCollectionEquality().equals(other.results, results)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.totalResults, totalResults) || other.totalResults == totalResults));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,const DeepCollectionEquality().hash(results),totalPages,totalResults);

@override
String toString() {
  return 'PopularMovieEntity(page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
}


}

/// @nodoc
abstract mixin class $PopularMovieEntityCopyWith<$Res>  {
  factory $PopularMovieEntityCopyWith(PopularMovieEntity value, $Res Function(PopularMovieEntity) _then) = _$PopularMovieEntityCopyWithImpl;
@useResult
$Res call({
 int page, List<PopularMovieResultEntity> results,@JsonKey(name: 'total_pages') int totalPages,@JsonKey(name: 'total_results') int totalResults
});




}
/// @nodoc
class _$PopularMovieEntityCopyWithImpl<$Res>
    implements $PopularMovieEntityCopyWith<$Res> {
  _$PopularMovieEntityCopyWithImpl(this._self, this._then);

  final PopularMovieEntity _self;
  final $Res Function(PopularMovieEntity) _then;

/// Create a copy of PopularMovieEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = null,Object? results = null,Object? totalPages = null,Object? totalResults = null,}) {
  return _then(_self.copyWith(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<PopularMovieResultEntity>,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,totalResults: null == totalResults ? _self.totalResults : totalResults // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PopularMovieEntity].
extension PopularMovieEntityPatterns on PopularMovieEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PopularMovieEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PopularMovieEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PopularMovieEntity value)  $default,){
final _that = this;
switch (_that) {
case _PopularMovieEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PopularMovieEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PopularMovieEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int page,  List<PopularMovieResultEntity> results, @JsonKey(name: 'total_pages')  int totalPages, @JsonKey(name: 'total_results')  int totalResults)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PopularMovieEntity() when $default != null:
return $default(_that.page,_that.results,_that.totalPages,_that.totalResults);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int page,  List<PopularMovieResultEntity> results, @JsonKey(name: 'total_pages')  int totalPages, @JsonKey(name: 'total_results')  int totalResults)  $default,) {final _that = this;
switch (_that) {
case _PopularMovieEntity():
return $default(_that.page,_that.results,_that.totalPages,_that.totalResults);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int page,  List<PopularMovieResultEntity> results, @JsonKey(name: 'total_pages')  int totalPages, @JsonKey(name: 'total_results')  int totalResults)?  $default,) {final _that = this;
switch (_that) {
case _PopularMovieEntity() when $default != null:
return $default(_that.page,_that.results,_that.totalPages,_that.totalResults);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PopularMovieEntity extends PopularMovieEntity {
  const _PopularMovieEntity({required this.page, final  List<PopularMovieResultEntity> results = const <PopularMovieResultEntity>[], @JsonKey(name: 'total_pages') required this.totalPages, @JsonKey(name: 'total_results') required this.totalResults}): _results = results,super._();
  factory _PopularMovieEntity.fromJson(Map<String, dynamic> json) => _$PopularMovieEntityFromJson(json);

@override final  int page;
 final  List<PopularMovieResultEntity> _results;
@override@JsonKey() List<PopularMovieResultEntity> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}

@override@JsonKey(name: 'total_pages') final  int totalPages;
@override@JsonKey(name: 'total_results') final  int totalResults;

/// Create a copy of PopularMovieEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PopularMovieEntityCopyWith<_PopularMovieEntity> get copyWith => __$PopularMovieEntityCopyWithImpl<_PopularMovieEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PopularMovieEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PopularMovieEntity&&(identical(other.page, page) || other.page == page)&&const DeepCollectionEquality().equals(other._results, _results)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.totalResults, totalResults) || other.totalResults == totalResults));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,const DeepCollectionEquality().hash(_results),totalPages,totalResults);

@override
String toString() {
  return 'PopularMovieEntity(page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
}


}

/// @nodoc
abstract mixin class _$PopularMovieEntityCopyWith<$Res> implements $PopularMovieEntityCopyWith<$Res> {
  factory _$PopularMovieEntityCopyWith(_PopularMovieEntity value, $Res Function(_PopularMovieEntity) _then) = __$PopularMovieEntityCopyWithImpl;
@override @useResult
$Res call({
 int page, List<PopularMovieResultEntity> results,@JsonKey(name: 'total_pages') int totalPages,@JsonKey(name: 'total_results') int totalResults
});




}
/// @nodoc
class __$PopularMovieEntityCopyWithImpl<$Res>
    implements _$PopularMovieEntityCopyWith<$Res> {
  __$PopularMovieEntityCopyWithImpl(this._self, this._then);

  final _PopularMovieEntity _self;
  final $Res Function(_PopularMovieEntity) _then;

/// Create a copy of PopularMovieEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,Object? results = null,Object? totalPages = null,Object? totalResults = null,}) {
  return _then(_PopularMovieEntity(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<PopularMovieResultEntity>,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,totalResults: null == totalResults ? _self.totalResults : totalResults // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
