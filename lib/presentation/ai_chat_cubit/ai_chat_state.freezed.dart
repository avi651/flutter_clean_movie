// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_chat_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AIChatState {

 List<ChatMessage> get messages; bool get isTyping; String? get error;
/// Create a copy of AIChatState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AIChatStateCopyWith<AIChatState> get copyWith => _$AIChatStateCopyWithImpl<AIChatState>(this as AIChatState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AIChatState&&const DeepCollectionEquality().equals(other.messages, messages)&&(identical(other.isTyping, isTyping) || other.isTyping == isTyping)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(messages),isTyping,error);

@override
String toString() {
  return 'AIChatState(messages: $messages, isTyping: $isTyping, error: $error)';
}


}

/// @nodoc
abstract mixin class $AIChatStateCopyWith<$Res>  {
  factory $AIChatStateCopyWith(AIChatState value, $Res Function(AIChatState) _then) = _$AIChatStateCopyWithImpl;
@useResult
$Res call({
 List<ChatMessage> messages, bool isTyping, String? error
});




}
/// @nodoc
class _$AIChatStateCopyWithImpl<$Res>
    implements $AIChatStateCopyWith<$Res> {
  _$AIChatStateCopyWithImpl(this._self, this._then);

  final AIChatState _self;
  final $Res Function(AIChatState) _then;

/// Create a copy of AIChatState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? messages = null,Object? isTyping = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
messages: null == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as List<ChatMessage>,isTyping: null == isTyping ? _self.isTyping : isTyping // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AIChatState].
extension AIChatStatePatterns on AIChatState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AIChatState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AIChatState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AIChatState value)  $default,){
final _that = this;
switch (_that) {
case _AIChatState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AIChatState value)?  $default,){
final _that = this;
switch (_that) {
case _AIChatState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ChatMessage> messages,  bool isTyping,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AIChatState() when $default != null:
return $default(_that.messages,_that.isTyping,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ChatMessage> messages,  bool isTyping,  String? error)  $default,) {final _that = this;
switch (_that) {
case _AIChatState():
return $default(_that.messages,_that.isTyping,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ChatMessage> messages,  bool isTyping,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _AIChatState() when $default != null:
return $default(_that.messages,_that.isTyping,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _AIChatState implements AIChatState {
  const _AIChatState({final  List<ChatMessage> messages = const [], this.isTyping = false, this.error}): _messages = messages;
  

 final  List<ChatMessage> _messages;
@override@JsonKey() List<ChatMessage> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}

@override@JsonKey() final  bool isTyping;
@override final  String? error;

/// Create a copy of AIChatState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AIChatStateCopyWith<_AIChatState> get copyWith => __$AIChatStateCopyWithImpl<_AIChatState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AIChatState&&const DeepCollectionEquality().equals(other._messages, _messages)&&(identical(other.isTyping, isTyping) || other.isTyping == isTyping)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_messages),isTyping,error);

@override
String toString() {
  return 'AIChatState(messages: $messages, isTyping: $isTyping, error: $error)';
}


}

/// @nodoc
abstract mixin class _$AIChatStateCopyWith<$Res> implements $AIChatStateCopyWith<$Res> {
  factory _$AIChatStateCopyWith(_AIChatState value, $Res Function(_AIChatState) _then) = __$AIChatStateCopyWithImpl;
@override @useResult
$Res call({
 List<ChatMessage> messages, bool isTyping, String? error
});




}
/// @nodoc
class __$AIChatStateCopyWithImpl<$Res>
    implements _$AIChatStateCopyWith<$Res> {
  __$AIChatStateCopyWithImpl(this._self, this._then);

  final _AIChatState _self;
  final $Res Function(_AIChatState) _then;

/// Create a copy of AIChatState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? messages = null,Object? isTyping = null,Object? error = freezed,}) {
  return _then(_AIChatState(
messages: null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<ChatMessage>,isTyping: null == isTyping ? _self.isTyping : isTyping // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
