// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'popular_movie_result_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PopularMovieResultEntity {

 bool get adult;@JsonKey(name: 'backdrop_path') String? get backdropPath;@JsonKey(name: 'genre_ids') List<int> get genreIds; int get id;@JsonKey(name: 'original_language') String get originalLanguage;@JsonKey(name: 'original_title') String get originalTitle; String get overview; double get popularity;@JsonKey(name: 'poster_path') String? get posterPath;@JsonKey(name: 'release_date') String get releaseDate; String get title; bool get video;@JsonKey(name: 'vote_average') double get voteAverage;@JsonKey(name: 'vote_count') int get voteCount;
/// Create a copy of PopularMovieResultEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PopularMovieResultEntityCopyWith<PopularMovieResultEntity> get copyWith => _$PopularMovieResultEntityCopyWithImpl<PopularMovieResultEntity>(this as PopularMovieResultEntity, _$identity);

  /// Serializes this PopularMovieResultEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PopularMovieResultEntity&&(identical(other.adult, adult) || other.adult == adult)&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath)&&const DeepCollectionEquality().equals(other.genreIds, genreIds)&&(identical(other.id, id) || other.id == id)&&(identical(other.originalLanguage, originalLanguage) || other.originalLanguage == originalLanguage)&&(identical(other.originalTitle, originalTitle) || other.originalTitle == originalTitle)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.popularity, popularity) || other.popularity == popularity)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate)&&(identical(other.title, title) || other.title == title)&&(identical(other.video, video) || other.video == video)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.voteCount, voteCount) || other.voteCount == voteCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,adult,backdropPath,const DeepCollectionEquality().hash(genreIds),id,originalLanguage,originalTitle,overview,popularity,posterPath,releaseDate,title,video,voteAverage,voteCount);

@override
String toString() {
  return 'PopularMovieResultEntity(adult: $adult, backdropPath: $backdropPath, genreIds: $genreIds, id: $id, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, releaseDate: $releaseDate, title: $title, video: $video, voteAverage: $voteAverage, voteCount: $voteCount)';
}


}

/// @nodoc
abstract mixin class $PopularMovieResultEntityCopyWith<$Res>  {
  factory $PopularMovieResultEntityCopyWith(PopularMovieResultEntity value, $Res Function(PopularMovieResultEntity) _then) = _$PopularMovieResultEntityCopyWithImpl;
@useResult
$Res call({
 bool adult,@JsonKey(name: 'backdrop_path') String? backdropPath,@JsonKey(name: 'genre_ids') List<int> genreIds, int id,@JsonKey(name: 'original_language') String originalLanguage,@JsonKey(name: 'original_title') String originalTitle, String overview, double popularity,@JsonKey(name: 'poster_path') String? posterPath,@JsonKey(name: 'release_date') String releaseDate, String title, bool video,@JsonKey(name: 'vote_average') double voteAverage,@JsonKey(name: 'vote_count') int voteCount
});




}
/// @nodoc
class _$PopularMovieResultEntityCopyWithImpl<$Res>
    implements $PopularMovieResultEntityCopyWith<$Res> {
  _$PopularMovieResultEntityCopyWithImpl(this._self, this._then);

  final PopularMovieResultEntity _self;
  final $Res Function(PopularMovieResultEntity) _then;

/// Create a copy of PopularMovieResultEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? adult = null,Object? backdropPath = freezed,Object? genreIds = null,Object? id = null,Object? originalLanguage = null,Object? originalTitle = null,Object? overview = null,Object? popularity = null,Object? posterPath = freezed,Object? releaseDate = null,Object? title = null,Object? video = null,Object? voteAverage = null,Object? voteCount = null,}) {
  return _then(_self.copyWith(
adult: null == adult ? _self.adult : adult // ignore: cast_nullable_to_non_nullable
as bool,backdropPath: freezed == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String?,genreIds: null == genreIds ? _self.genreIds : genreIds // ignore: cast_nullable_to_non_nullable
as List<int>,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,originalLanguage: null == originalLanguage ? _self.originalLanguage : originalLanguage // ignore: cast_nullable_to_non_nullable
as String,originalTitle: null == originalTitle ? _self.originalTitle : originalTitle // ignore: cast_nullable_to_non_nullable
as String,overview: null == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String,popularity: null == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as double,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,releaseDate: null == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,video: null == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as bool,voteAverage: null == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double,voteCount: null == voteCount ? _self.voteCount : voteCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PopularMovieResultEntity].
extension PopularMovieResultEntityPatterns on PopularMovieResultEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PopularMovieResultEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PopularMovieResultEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PopularMovieResultEntity value)  $default,){
final _that = this;
switch (_that) {
case _PopularMovieResultEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PopularMovieResultEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PopularMovieResultEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool adult, @JsonKey(name: 'backdrop_path')  String? backdropPath, @JsonKey(name: 'genre_ids')  List<int> genreIds,  int id, @JsonKey(name: 'original_language')  String originalLanguage, @JsonKey(name: 'original_title')  String originalTitle,  String overview,  double popularity, @JsonKey(name: 'poster_path')  String? posterPath, @JsonKey(name: 'release_date')  String releaseDate,  String title,  bool video, @JsonKey(name: 'vote_average')  double voteAverage, @JsonKey(name: 'vote_count')  int voteCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PopularMovieResultEntity() when $default != null:
return $default(_that.adult,_that.backdropPath,_that.genreIds,_that.id,_that.originalLanguage,_that.originalTitle,_that.overview,_that.popularity,_that.posterPath,_that.releaseDate,_that.title,_that.video,_that.voteAverage,_that.voteCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool adult, @JsonKey(name: 'backdrop_path')  String? backdropPath, @JsonKey(name: 'genre_ids')  List<int> genreIds,  int id, @JsonKey(name: 'original_language')  String originalLanguage, @JsonKey(name: 'original_title')  String originalTitle,  String overview,  double popularity, @JsonKey(name: 'poster_path')  String? posterPath, @JsonKey(name: 'release_date')  String releaseDate,  String title,  bool video, @JsonKey(name: 'vote_average')  double voteAverage, @JsonKey(name: 'vote_count')  int voteCount)  $default,) {final _that = this;
switch (_that) {
case _PopularMovieResultEntity():
return $default(_that.adult,_that.backdropPath,_that.genreIds,_that.id,_that.originalLanguage,_that.originalTitle,_that.overview,_that.popularity,_that.posterPath,_that.releaseDate,_that.title,_that.video,_that.voteAverage,_that.voteCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool adult, @JsonKey(name: 'backdrop_path')  String? backdropPath, @JsonKey(name: 'genre_ids')  List<int> genreIds,  int id, @JsonKey(name: 'original_language')  String originalLanguage, @JsonKey(name: 'original_title')  String originalTitle,  String overview,  double popularity, @JsonKey(name: 'poster_path')  String? posterPath, @JsonKey(name: 'release_date')  String releaseDate,  String title,  bool video, @JsonKey(name: 'vote_average')  double voteAverage, @JsonKey(name: 'vote_count')  int voteCount)?  $default,) {final _that = this;
switch (_that) {
case _PopularMovieResultEntity() when $default != null:
return $default(_that.adult,_that.backdropPath,_that.genreIds,_that.id,_that.originalLanguage,_that.originalTitle,_that.overview,_that.popularity,_that.posterPath,_that.releaseDate,_that.title,_that.video,_that.voteAverage,_that.voteCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PopularMovieResultEntity extends PopularMovieResultEntity {
  const _PopularMovieResultEntity({required this.adult, @JsonKey(name: 'backdrop_path') this.backdropPath, @JsonKey(name: 'genre_ids') required final  List<int> genreIds, required this.id, @JsonKey(name: 'original_language') required this.originalLanguage, @JsonKey(name: 'original_title') required this.originalTitle, required this.overview, required this.popularity, @JsonKey(name: 'poster_path') this.posterPath, @JsonKey(name: 'release_date') required this.releaseDate, required this.title, required this.video, @JsonKey(name: 'vote_average') required this.voteAverage, @JsonKey(name: 'vote_count') required this.voteCount}): _genreIds = genreIds,super._();
  factory _PopularMovieResultEntity.fromJson(Map<String, dynamic> json) => _$PopularMovieResultEntityFromJson(json);

@override final  bool adult;
@override@JsonKey(name: 'backdrop_path') final  String? backdropPath;
 final  List<int> _genreIds;
@override@JsonKey(name: 'genre_ids') List<int> get genreIds {
  if (_genreIds is EqualUnmodifiableListView) return _genreIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_genreIds);
}

@override final  int id;
@override@JsonKey(name: 'original_language') final  String originalLanguage;
@override@JsonKey(name: 'original_title') final  String originalTitle;
@override final  String overview;
@override final  double popularity;
@override@JsonKey(name: 'poster_path') final  String? posterPath;
@override@JsonKey(name: 'release_date') final  String releaseDate;
@override final  String title;
@override final  bool video;
@override@JsonKey(name: 'vote_average') final  double voteAverage;
@override@JsonKey(name: 'vote_count') final  int voteCount;

/// Create a copy of PopularMovieResultEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PopularMovieResultEntityCopyWith<_PopularMovieResultEntity> get copyWith => __$PopularMovieResultEntityCopyWithImpl<_PopularMovieResultEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PopularMovieResultEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PopularMovieResultEntity&&(identical(other.adult, adult) || other.adult == adult)&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath)&&const DeepCollectionEquality().equals(other._genreIds, _genreIds)&&(identical(other.id, id) || other.id == id)&&(identical(other.originalLanguage, originalLanguage) || other.originalLanguage == originalLanguage)&&(identical(other.originalTitle, originalTitle) || other.originalTitle == originalTitle)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.popularity, popularity) || other.popularity == popularity)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate)&&(identical(other.title, title) || other.title == title)&&(identical(other.video, video) || other.video == video)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.voteCount, voteCount) || other.voteCount == voteCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,adult,backdropPath,const DeepCollectionEquality().hash(_genreIds),id,originalLanguage,originalTitle,overview,popularity,posterPath,releaseDate,title,video,voteAverage,voteCount);

@override
String toString() {
  return 'PopularMovieResultEntity(adult: $adult, backdropPath: $backdropPath, genreIds: $genreIds, id: $id, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, releaseDate: $releaseDate, title: $title, video: $video, voteAverage: $voteAverage, voteCount: $voteCount)';
}


}

/// @nodoc
abstract mixin class _$PopularMovieResultEntityCopyWith<$Res> implements $PopularMovieResultEntityCopyWith<$Res> {
  factory _$PopularMovieResultEntityCopyWith(_PopularMovieResultEntity value, $Res Function(_PopularMovieResultEntity) _then) = __$PopularMovieResultEntityCopyWithImpl;
@override @useResult
$Res call({
 bool adult,@JsonKey(name: 'backdrop_path') String? backdropPath,@JsonKey(name: 'genre_ids') List<int> genreIds, int id,@JsonKey(name: 'original_language') String originalLanguage,@JsonKey(name: 'original_title') String originalTitle, String overview, double popularity,@JsonKey(name: 'poster_path') String? posterPath,@JsonKey(name: 'release_date') String releaseDate, String title, bool video,@JsonKey(name: 'vote_average') double voteAverage,@JsonKey(name: 'vote_count') int voteCount
});




}
/// @nodoc
class __$PopularMovieResultEntityCopyWithImpl<$Res>
    implements _$PopularMovieResultEntityCopyWith<$Res> {
  __$PopularMovieResultEntityCopyWithImpl(this._self, this._then);

  final _PopularMovieResultEntity _self;
  final $Res Function(_PopularMovieResultEntity) _then;

/// Create a copy of PopularMovieResultEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? adult = null,Object? backdropPath = freezed,Object? genreIds = null,Object? id = null,Object? originalLanguage = null,Object? originalTitle = null,Object? overview = null,Object? popularity = null,Object? posterPath = freezed,Object? releaseDate = null,Object? title = null,Object? video = null,Object? voteAverage = null,Object? voteCount = null,}) {
  return _then(_PopularMovieResultEntity(
adult: null == adult ? _self.adult : adult // ignore: cast_nullable_to_non_nullable
as bool,backdropPath: freezed == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String?,genreIds: null == genreIds ? _self._genreIds : genreIds // ignore: cast_nullable_to_non_nullable
as List<int>,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,originalLanguage: null == originalLanguage ? _self.originalLanguage : originalLanguage // ignore: cast_nullable_to_non_nullable
as String,originalTitle: null == originalTitle ? _self.originalTitle : originalTitle // ignore: cast_nullable_to_non_nullable
as String,overview: null == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String,popularity: null == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as double,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,releaseDate: null == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,video: null == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as bool,voteAverage: null == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double,voteCount: null == voteCount ? _self.voteCount : voteCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
