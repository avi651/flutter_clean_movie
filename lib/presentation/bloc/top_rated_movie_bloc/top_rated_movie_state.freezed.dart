// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_rated_movie_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TopRatedMovieState {

 List<MovieResultEntity> get movies; bool get isLoading; String? get errorMessage;
/// Create a copy of TopRatedMovieState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TopRatedMovieStateCopyWith<TopRatedMovieState> get copyWith => _$TopRatedMovieStateCopyWithImpl<TopRatedMovieState>(this as TopRatedMovieState, _$identity);

  /// Serializes this TopRatedMovieState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TopRatedMovieState&&const DeepCollectionEquality().equals(other.movies, movies)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(movies),isLoading,errorMessage);

@override
String toString() {
  return 'TopRatedMovieState(movies: $movies, isLoading: $isLoading, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $TopRatedMovieStateCopyWith<$Res>  {
  factory $TopRatedMovieStateCopyWith(TopRatedMovieState value, $Res Function(TopRatedMovieState) _then) = _$TopRatedMovieStateCopyWithImpl;
@useResult
$Res call({
 List<MovieResultEntity> movies, bool isLoading, String? errorMessage
});




}
/// @nodoc
class _$TopRatedMovieStateCopyWithImpl<$Res>
    implements $TopRatedMovieStateCopyWith<$Res> {
  _$TopRatedMovieStateCopyWithImpl(this._self, this._then);

  final TopRatedMovieState _self;
  final $Res Function(TopRatedMovieState) _then;

/// Create a copy of TopRatedMovieState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? movies = null,Object? isLoading = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
movies: null == movies ? _self.movies : movies // ignore: cast_nullable_to_non_nullable
as List<MovieResultEntity>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TopRatedMovieState].
extension TopRatedMovieStatePatterns on TopRatedMovieState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TopRatedMovieState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TopRatedMovieState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TopRatedMovieState value)  $default,){
final _that = this;
switch (_that) {
case _TopRatedMovieState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TopRatedMovieState value)?  $default,){
final _that = this;
switch (_that) {
case _TopRatedMovieState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<MovieResultEntity> movies,  bool isLoading,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TopRatedMovieState() when $default != null:
return $default(_that.movies,_that.isLoading,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<MovieResultEntity> movies,  bool isLoading,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _TopRatedMovieState():
return $default(_that.movies,_that.isLoading,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<MovieResultEntity> movies,  bool isLoading,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _TopRatedMovieState() when $default != null:
return $default(_that.movies,_that.isLoading,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TopRatedMovieState implements TopRatedMovieState {
  const _TopRatedMovieState({final  List<MovieResultEntity> movies = const [], this.isLoading = false, this.errorMessage}): _movies = movies;
  factory _TopRatedMovieState.fromJson(Map<String, dynamic> json) => _$TopRatedMovieStateFromJson(json);

 final  List<MovieResultEntity> _movies;
@override@JsonKey() List<MovieResultEntity> get movies {
  if (_movies is EqualUnmodifiableListView) return _movies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_movies);
}

@override@JsonKey() final  bool isLoading;
@override final  String? errorMessage;

/// Create a copy of TopRatedMovieState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TopRatedMovieStateCopyWith<_TopRatedMovieState> get copyWith => __$TopRatedMovieStateCopyWithImpl<_TopRatedMovieState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TopRatedMovieStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TopRatedMovieState&&const DeepCollectionEquality().equals(other._movies, _movies)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_movies),isLoading,errorMessage);

@override
String toString() {
  return 'TopRatedMovieState(movies: $movies, isLoading: $isLoading, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$TopRatedMovieStateCopyWith<$Res> implements $TopRatedMovieStateCopyWith<$Res> {
  factory _$TopRatedMovieStateCopyWith(_TopRatedMovieState value, $Res Function(_TopRatedMovieState) _then) = __$TopRatedMovieStateCopyWithImpl;
@override @useResult
$Res call({
 List<MovieResultEntity> movies, bool isLoading, String? errorMessage
});




}
/// @nodoc
class __$TopRatedMovieStateCopyWithImpl<$Res>
    implements _$TopRatedMovieStateCopyWith<$Res> {
  __$TopRatedMovieStateCopyWithImpl(this._self, this._then);

  final _TopRatedMovieState _self;
  final $Res Function(_TopRatedMovieState) _then;

/// Create a copy of TopRatedMovieState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? movies = null,Object? isLoading = null,Object? errorMessage = freezed,}) {
  return _then(_TopRatedMovieState(
movies: null == movies ? _self._movies : movies // ignore: cast_nullable_to_non_nullable
as List<MovieResultEntity>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
