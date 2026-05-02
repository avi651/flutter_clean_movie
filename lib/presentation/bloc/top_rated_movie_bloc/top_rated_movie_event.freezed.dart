// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_rated_movie_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TopRatedMovieEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TopRatedMovieEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TopRatedMovieEvent()';
}


}

/// @nodoc
class $TopRatedMovieEventCopyWith<$Res>  {
$TopRatedMovieEventCopyWith(TopRatedMovieEvent _, $Res Function(TopRatedMovieEvent) __);
}


/// Adds pattern-matching-related methods to [TopRatedMovieEvent].
extension TopRatedMovieEventPatterns on TopRatedMovieEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FetchMoviesEvent value)?  fetch,TResult Function( RefreshMoviesEvent value)?  refresh,TResult Function( ClearMoviesEvent value)?  clear,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FetchMoviesEvent() when fetch != null:
return fetch(_that);case RefreshMoviesEvent() when refresh != null:
return refresh(_that);case ClearMoviesEvent() when clear != null:
return clear(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FetchMoviesEvent value)  fetch,required TResult Function( RefreshMoviesEvent value)  refresh,required TResult Function( ClearMoviesEvent value)  clear,}){
final _that = this;
switch (_that) {
case FetchMoviesEvent():
return fetch(_that);case RefreshMoviesEvent():
return refresh(_that);case ClearMoviesEvent():
return clear(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FetchMoviesEvent value)?  fetch,TResult? Function( RefreshMoviesEvent value)?  refresh,TResult? Function( ClearMoviesEvent value)?  clear,}){
final _that = this;
switch (_that) {
case FetchMoviesEvent() when fetch != null:
return fetch(_that);case RefreshMoviesEvent() when refresh != null:
return refresh(_that);case ClearMoviesEvent() when clear != null:
return clear(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetch,TResult Function()?  refresh,TResult Function()?  clear,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchMoviesEvent() when fetch != null:
return fetch();case RefreshMoviesEvent() when refresh != null:
return refresh();case ClearMoviesEvent() when clear != null:
return clear();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetch,required TResult Function()  refresh,required TResult Function()  clear,}) {final _that = this;
switch (_that) {
case FetchMoviesEvent():
return fetch();case RefreshMoviesEvent():
return refresh();case ClearMoviesEvent():
return clear();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetch,TResult? Function()?  refresh,TResult? Function()?  clear,}) {final _that = this;
switch (_that) {
case FetchMoviesEvent() when fetch != null:
return fetch();case RefreshMoviesEvent() when refresh != null:
return refresh();case ClearMoviesEvent() when clear != null:
return clear();case _:
  return null;

}
}

}

/// @nodoc


class FetchMoviesEvent implements TopRatedMovieEvent {
  const FetchMoviesEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchMoviesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TopRatedMovieEvent.fetch()';
}


}




/// @nodoc


class RefreshMoviesEvent implements TopRatedMovieEvent {
  const RefreshMoviesEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefreshMoviesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TopRatedMovieEvent.refresh()';
}


}




/// @nodoc


class ClearMoviesEvent implements TopRatedMovieEvent {
  const ClearMoviesEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClearMoviesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TopRatedMovieEvent.clear()';
}


}




// dart format on
