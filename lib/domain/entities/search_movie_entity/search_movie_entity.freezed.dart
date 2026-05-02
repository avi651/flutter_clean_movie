// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_movie_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchMovieEntity {

 int get page; List<SearchMovieResultEntity> get results;@JsonKey(name: 'total_pages') int get totalPages;@JsonKey(name: 'total_results') int get totalResults;
/// Create a copy of SearchMovieEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchMovieEntityCopyWith<SearchMovieEntity> get copyWith => _$SearchMovieEntityCopyWithImpl<SearchMovieEntity>(this as SearchMovieEntity, _$identity);

  /// Serializes this SearchMovieEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchMovieEntity&&(identical(other.page, page) || other.page == page)&&const DeepCollectionEquality().equals(other.results, results)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.totalResults, totalResults) || other.totalResults == totalResults));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,const DeepCollectionEquality().hash(results),totalPages,totalResults);

@override
String toString() {
  return 'SearchMovieEntity(page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
}


}

/// @nodoc
abstract mixin class $SearchMovieEntityCopyWith<$Res>  {
  factory $SearchMovieEntityCopyWith(SearchMovieEntity value, $Res Function(SearchMovieEntity) _then) = _$SearchMovieEntityCopyWithImpl;
@useResult
$Res call({
 int page, List<SearchMovieResultEntity> results,@JsonKey(name: 'total_pages') int totalPages,@JsonKey(name: 'total_results') int totalResults
});




}
/// @nodoc
class _$SearchMovieEntityCopyWithImpl<$Res>
    implements $SearchMovieEntityCopyWith<$Res> {
  _$SearchMovieEntityCopyWithImpl(this._self, this._then);

  final SearchMovieEntity _self;
  final $Res Function(SearchMovieEntity) _then;

/// Create a copy of SearchMovieEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = null,Object? results = null,Object? totalPages = null,Object? totalResults = null,}) {
  return _then(_self.copyWith(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<SearchMovieResultEntity>,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,totalResults: null == totalResults ? _self.totalResults : totalResults // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchMovieEntity].
extension SearchMovieEntityPatterns on SearchMovieEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchMovieEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchMovieEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchMovieEntity value)  $default,){
final _that = this;
switch (_that) {
case _SearchMovieEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchMovieEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SearchMovieEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int page,  List<SearchMovieResultEntity> results, @JsonKey(name: 'total_pages')  int totalPages, @JsonKey(name: 'total_results')  int totalResults)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchMovieEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int page,  List<SearchMovieResultEntity> results, @JsonKey(name: 'total_pages')  int totalPages, @JsonKey(name: 'total_results')  int totalResults)  $default,) {final _that = this;
switch (_that) {
case _SearchMovieEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int page,  List<SearchMovieResultEntity> results, @JsonKey(name: 'total_pages')  int totalPages, @JsonKey(name: 'total_results')  int totalResults)?  $default,) {final _that = this;
switch (_that) {
case _SearchMovieEntity() when $default != null:
return $default(_that.page,_that.results,_that.totalPages,_that.totalResults);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchMovieEntity extends SearchMovieEntity {
  const _SearchMovieEntity({this.page = 1, final  List<SearchMovieResultEntity> results = const <SearchMovieResultEntity>[], @JsonKey(name: 'total_pages') this.totalPages = 0, @JsonKey(name: 'total_results') this.totalResults = 0}): _results = results,super._();
  factory _SearchMovieEntity.fromJson(Map<String, dynamic> json) => _$SearchMovieEntityFromJson(json);

@override@JsonKey() final  int page;
 final  List<SearchMovieResultEntity> _results;
@override@JsonKey() List<SearchMovieResultEntity> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}

@override@JsonKey(name: 'total_pages') final  int totalPages;
@override@JsonKey(name: 'total_results') final  int totalResults;

/// Create a copy of SearchMovieEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchMovieEntityCopyWith<_SearchMovieEntity> get copyWith => __$SearchMovieEntityCopyWithImpl<_SearchMovieEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchMovieEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchMovieEntity&&(identical(other.page, page) || other.page == page)&&const DeepCollectionEquality().equals(other._results, _results)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.totalResults, totalResults) || other.totalResults == totalResults));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,const DeepCollectionEquality().hash(_results),totalPages,totalResults);

@override
String toString() {
  return 'SearchMovieEntity(page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
}


}

/// @nodoc
abstract mixin class _$SearchMovieEntityCopyWith<$Res> implements $SearchMovieEntityCopyWith<$Res> {
  factory _$SearchMovieEntityCopyWith(_SearchMovieEntity value, $Res Function(_SearchMovieEntity) _then) = __$SearchMovieEntityCopyWithImpl;
@override @useResult
$Res call({
 int page, List<SearchMovieResultEntity> results,@JsonKey(name: 'total_pages') int totalPages,@JsonKey(name: 'total_results') int totalResults
});




}
/// @nodoc
class __$SearchMovieEntityCopyWithImpl<$Res>
    implements _$SearchMovieEntityCopyWith<$Res> {
  __$SearchMovieEntityCopyWithImpl(this._self, this._then);

  final _SearchMovieEntity _self;
  final $Res Function(_SearchMovieEntity) _then;

/// Create a copy of SearchMovieEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,Object? results = null,Object? totalPages = null,Object? totalResults = null,}) {
  return _then(_SearchMovieEntity(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<SearchMovieResultEntity>,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,totalResults: null == totalResults ? _self.totalResults : totalResults // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
