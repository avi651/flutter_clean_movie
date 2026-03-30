// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MovieState {

 List<MovieResultEntity> get movies; bool get isLoading; String? get errorMessage;
/// Create a copy of MovieState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieStateCopyWith<MovieState> get copyWith => _$MovieStateCopyWithImpl<MovieState>(this as MovieState, _$identity);

  /// Serializes this MovieState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieState&&const DeepCollectionEquality().equals(other.movies, movies)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(movies),isLoading,errorMessage);

@override
String toString() {
  return 'MovieState(movies: $movies, isLoading: $isLoading, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $MovieStateCopyWith<$Res>  {
  factory $MovieStateCopyWith(MovieState value, $Res Function(MovieState) _then) = _$MovieStateCopyWithImpl;
@useResult
$Res call({
 List<MovieResultEntity> movies, bool isLoading, String? errorMessage
});




}
/// @nodoc
class _$MovieStateCopyWithImpl<$Res>
    implements $MovieStateCopyWith<$Res> {
  _$MovieStateCopyWithImpl(this._self, this._then);

  final MovieState _self;
  final $Res Function(MovieState) _then;

/// Create a copy of MovieState
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


/// Adds pattern-matching-related methods to [MovieState].
extension MovieStatePatterns on MovieState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MovieState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MovieState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MovieState value)  $default,){
final _that = this;
switch (_that) {
case _MovieState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MovieState value)?  $default,){
final _that = this;
switch (_that) {
case _MovieState() when $default != null:
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
case _MovieState() when $default != null:
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
case _MovieState():
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
case _MovieState() when $default != null:
return $default(_that.movies,_that.isLoading,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MovieState implements MovieState {
  const _MovieState({final  List<MovieResultEntity> movies = const [], this.isLoading = false, this.errorMessage}): _movies = movies;
  factory _MovieState.fromJson(Map<String, dynamic> json) => _$MovieStateFromJson(json);

 final  List<MovieResultEntity> _movies;
@override@JsonKey() List<MovieResultEntity> get movies {
  if (_movies is EqualUnmodifiableListView) return _movies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_movies);
}

@override@JsonKey() final  bool isLoading;
@override final  String? errorMessage;

/// Create a copy of MovieState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieStateCopyWith<_MovieState> get copyWith => __$MovieStateCopyWithImpl<_MovieState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MovieStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovieState&&const DeepCollectionEquality().equals(other._movies, _movies)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_movies),isLoading,errorMessage);

@override
String toString() {
  return 'MovieState(movies: $movies, isLoading: $isLoading, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$MovieStateCopyWith<$Res> implements $MovieStateCopyWith<$Res> {
  factory _$MovieStateCopyWith(_MovieState value, $Res Function(_MovieState) _then) = __$MovieStateCopyWithImpl;
@override @useResult
$Res call({
 List<MovieResultEntity> movies, bool isLoading, String? errorMessage
});




}
/// @nodoc
class __$MovieStateCopyWithImpl<$Res>
    implements _$MovieStateCopyWith<$Res> {
  __$MovieStateCopyWithImpl(this._self, this._then);

  final _MovieState _self;
  final $Res Function(_MovieState) _then;

/// Create a copy of MovieState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? movies = null,Object? isLoading = null,Object? errorMessage = freezed,}) {
  return _then(_MovieState(
movies: null == movies ? _self._movies : movies // ignore: cast_nullable_to_non_nullable
as List<MovieResultEntity>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
