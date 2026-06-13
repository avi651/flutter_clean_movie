// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_review_detail_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MovieReviewDetailEntity {

 String get author;@JsonKey(name: 'author_details') MovieAuthorEntity get authorDetails; String get content;@JsonKey(name: 'created_at') String? get createdAt; String get id;@JsonKey(name: 'updated_at') String get updatedAt; String get url;
/// Create a copy of MovieReviewDetailEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieReviewDetailEntityCopyWith<MovieReviewDetailEntity> get copyWith => _$MovieReviewDetailEntityCopyWithImpl<MovieReviewDetailEntity>(this as MovieReviewDetailEntity, _$identity);

  /// Serializes this MovieReviewDetailEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieReviewDetailEntity&&(identical(other.author, author) || other.author == author)&&(identical(other.authorDetails, authorDetails) || other.authorDetails == authorDetails)&&(identical(other.content, content) || other.content == content)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.id, id) || other.id == id)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,author,authorDetails,content,createdAt,id,updatedAt,url);

@override
String toString() {
  return 'MovieReviewDetailEntity(author: $author, authorDetails: $authorDetails, content: $content, createdAt: $createdAt, id: $id, updatedAt: $updatedAt, url: $url)';
}


}

/// @nodoc
abstract mixin class $MovieReviewDetailEntityCopyWith<$Res>  {
  factory $MovieReviewDetailEntityCopyWith(MovieReviewDetailEntity value, $Res Function(MovieReviewDetailEntity) _then) = _$MovieReviewDetailEntityCopyWithImpl;
@useResult
$Res call({
 String author,@JsonKey(name: 'author_details') MovieAuthorEntity authorDetails, String content,@JsonKey(name: 'created_at') String? createdAt, String id,@JsonKey(name: 'updated_at') String updatedAt, String url
});


$MovieAuthorEntityCopyWith<$Res> get authorDetails;

}
/// @nodoc
class _$MovieReviewDetailEntityCopyWithImpl<$Res>
    implements $MovieReviewDetailEntityCopyWith<$Res> {
  _$MovieReviewDetailEntityCopyWithImpl(this._self, this._then);

  final MovieReviewDetailEntity _self;
  final $Res Function(MovieReviewDetailEntity) _then;

/// Create a copy of MovieReviewDetailEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? author = null,Object? authorDetails = null,Object? content = null,Object? createdAt = freezed,Object? id = null,Object? updatedAt = null,Object? url = null,}) {
  return _then(_self.copyWith(
author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String,authorDetails: null == authorDetails ? _self.authorDetails : authorDetails // ignore: cast_nullable_to_non_nullable
as MovieAuthorEntity,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of MovieReviewDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MovieAuthorEntityCopyWith<$Res> get authorDetails {
  
  return $MovieAuthorEntityCopyWith<$Res>(_self.authorDetails, (value) {
    return _then(_self.copyWith(authorDetails: value));
  });
}
}


/// Adds pattern-matching-related methods to [MovieReviewDetailEntity].
extension MovieReviewDetailEntityPatterns on MovieReviewDetailEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MovieReviewDetailEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MovieReviewDetailEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MovieReviewDetailEntity value)  $default,){
final _that = this;
switch (_that) {
case _MovieReviewDetailEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MovieReviewDetailEntity value)?  $default,){
final _that = this;
switch (_that) {
case _MovieReviewDetailEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String author, @JsonKey(name: 'author_details')  MovieAuthorEntity authorDetails,  String content, @JsonKey(name: 'created_at')  String? createdAt,  String id, @JsonKey(name: 'updated_at')  String updatedAt,  String url)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MovieReviewDetailEntity() when $default != null:
return $default(_that.author,_that.authorDetails,_that.content,_that.createdAt,_that.id,_that.updatedAt,_that.url);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String author, @JsonKey(name: 'author_details')  MovieAuthorEntity authorDetails,  String content, @JsonKey(name: 'created_at')  String? createdAt,  String id, @JsonKey(name: 'updated_at')  String updatedAt,  String url)  $default,) {final _that = this;
switch (_that) {
case _MovieReviewDetailEntity():
return $default(_that.author,_that.authorDetails,_that.content,_that.createdAt,_that.id,_that.updatedAt,_that.url);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String author, @JsonKey(name: 'author_details')  MovieAuthorEntity authorDetails,  String content, @JsonKey(name: 'created_at')  String? createdAt,  String id, @JsonKey(name: 'updated_at')  String updatedAt,  String url)?  $default,) {final _that = this;
switch (_that) {
case _MovieReviewDetailEntity() when $default != null:
return $default(_that.author,_that.authorDetails,_that.content,_that.createdAt,_that.id,_that.updatedAt,_that.url);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MovieReviewDetailEntity extends MovieReviewDetailEntity {
  const _MovieReviewDetailEntity({this.author = '', @JsonKey(name: 'author_details') this.authorDetails = const MovieAuthorEntity(), this.content = '', @JsonKey(name: 'created_at') this.createdAt, this.id = '', @JsonKey(name: 'updated_at') this.updatedAt = '', this.url = ''}): super._();
  factory _MovieReviewDetailEntity.fromJson(Map<String, dynamic> json) => _$MovieReviewDetailEntityFromJson(json);

@override@JsonKey() final  String author;
@override@JsonKey(name: 'author_details') final  MovieAuthorEntity authorDetails;
@override@JsonKey() final  String content;
@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey() final  String id;
@override@JsonKey(name: 'updated_at') final  String updatedAt;
@override@JsonKey() final  String url;

/// Create a copy of MovieReviewDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieReviewDetailEntityCopyWith<_MovieReviewDetailEntity> get copyWith => __$MovieReviewDetailEntityCopyWithImpl<_MovieReviewDetailEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MovieReviewDetailEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovieReviewDetailEntity&&(identical(other.author, author) || other.author == author)&&(identical(other.authorDetails, authorDetails) || other.authorDetails == authorDetails)&&(identical(other.content, content) || other.content == content)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.id, id) || other.id == id)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,author,authorDetails,content,createdAt,id,updatedAt,url);

@override
String toString() {
  return 'MovieReviewDetailEntity(author: $author, authorDetails: $authorDetails, content: $content, createdAt: $createdAt, id: $id, updatedAt: $updatedAt, url: $url)';
}


}

/// @nodoc
abstract mixin class _$MovieReviewDetailEntityCopyWith<$Res> implements $MovieReviewDetailEntityCopyWith<$Res> {
  factory _$MovieReviewDetailEntityCopyWith(_MovieReviewDetailEntity value, $Res Function(_MovieReviewDetailEntity) _then) = __$MovieReviewDetailEntityCopyWithImpl;
@override @useResult
$Res call({
 String author,@JsonKey(name: 'author_details') MovieAuthorEntity authorDetails, String content,@JsonKey(name: 'created_at') String? createdAt, String id,@JsonKey(name: 'updated_at') String updatedAt, String url
});


@override $MovieAuthorEntityCopyWith<$Res> get authorDetails;

}
/// @nodoc
class __$MovieReviewDetailEntityCopyWithImpl<$Res>
    implements _$MovieReviewDetailEntityCopyWith<$Res> {
  __$MovieReviewDetailEntityCopyWithImpl(this._self, this._then);

  final _MovieReviewDetailEntity _self;
  final $Res Function(_MovieReviewDetailEntity) _then;

/// Create a copy of MovieReviewDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? author = null,Object? authorDetails = null,Object? content = null,Object? createdAt = freezed,Object? id = null,Object? updatedAt = null,Object? url = null,}) {
  return _then(_MovieReviewDetailEntity(
author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String,authorDetails: null == authorDetails ? _self.authorDetails : authorDetails // ignore: cast_nullable_to_non_nullable
as MovieAuthorEntity,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of MovieReviewDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MovieAuthorEntityCopyWith<$Res> get authorDetails {
  
  return $MovieAuthorEntityCopyWith<$Res>(_self.authorDetails, (value) {
    return _then(_self.copyWith(authorDetails: value));
  });
}
}

// dart format on
