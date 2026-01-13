// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signin_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SigninEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SigninEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SigninEvent()';
}


}

/// @nodoc
class $SigninEventCopyWith<$Res>  {
$SigninEventCopyWith(SigninEvent _, $Res Function(SigninEvent) __);
}


/// Adds pattern-matching-related methods to [SigninEvent].
extension SigninEventPatterns on SigninEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GoogleAuthenSigninEvent value)?  googleAuthen,TResult Function( UserIsOnlyneGoogleAuthenSigninEvent value)?  userIsOnlyne,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GoogleAuthenSigninEvent() when googleAuthen != null:
return googleAuthen(_that);case UserIsOnlyneGoogleAuthenSigninEvent() when userIsOnlyne != null:
return userIsOnlyne(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GoogleAuthenSigninEvent value)  googleAuthen,required TResult Function( UserIsOnlyneGoogleAuthenSigninEvent value)  userIsOnlyne,}){
final _that = this;
switch (_that) {
case GoogleAuthenSigninEvent():
return googleAuthen(_that);case UserIsOnlyneGoogleAuthenSigninEvent():
return userIsOnlyne(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GoogleAuthenSigninEvent value)?  googleAuthen,TResult? Function( UserIsOnlyneGoogleAuthenSigninEvent value)?  userIsOnlyne,}){
final _that = this;
switch (_that) {
case GoogleAuthenSigninEvent() when googleAuthen != null:
return googleAuthen(_that);case UserIsOnlyneGoogleAuthenSigninEvent() when userIsOnlyne != null:
return userIsOnlyne(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  googleAuthen,TResult Function( bool userIsOnlyne)?  userIsOnlyne,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GoogleAuthenSigninEvent() when googleAuthen != null:
return googleAuthen();case UserIsOnlyneGoogleAuthenSigninEvent() when userIsOnlyne != null:
return userIsOnlyne(_that.userIsOnlyne);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  googleAuthen,required TResult Function( bool userIsOnlyne)  userIsOnlyne,}) {final _that = this;
switch (_that) {
case GoogleAuthenSigninEvent():
return googleAuthen();case UserIsOnlyneGoogleAuthenSigninEvent():
return userIsOnlyne(_that.userIsOnlyne);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  googleAuthen,TResult? Function( bool userIsOnlyne)?  userIsOnlyne,}) {final _that = this;
switch (_that) {
case GoogleAuthenSigninEvent() when googleAuthen != null:
return googleAuthen();case UserIsOnlyneGoogleAuthenSigninEvent() when userIsOnlyne != null:
return userIsOnlyne(_that.userIsOnlyne);case _:
  return null;

}
}

}

/// @nodoc


class GoogleAuthenSigninEvent implements SigninEvent {
   GoogleAuthenSigninEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GoogleAuthenSigninEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SigninEvent.googleAuthen()';
}


}




/// @nodoc


class UserIsOnlyneGoogleAuthenSigninEvent implements SigninEvent {
   UserIsOnlyneGoogleAuthenSigninEvent({required this.userIsOnlyne});
  

 final  bool userIsOnlyne;

/// Create a copy of SigninEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserIsOnlyneGoogleAuthenSigninEventCopyWith<UserIsOnlyneGoogleAuthenSigninEvent> get copyWith => _$UserIsOnlyneGoogleAuthenSigninEventCopyWithImpl<UserIsOnlyneGoogleAuthenSigninEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserIsOnlyneGoogleAuthenSigninEvent&&(identical(other.userIsOnlyne, userIsOnlyne) || other.userIsOnlyne == userIsOnlyne));
}


@override
int get hashCode => Object.hash(runtimeType,userIsOnlyne);

@override
String toString() {
  return 'SigninEvent.userIsOnlyne(userIsOnlyne: $userIsOnlyne)';
}


}

/// @nodoc
abstract mixin class $UserIsOnlyneGoogleAuthenSigninEventCopyWith<$Res> implements $SigninEventCopyWith<$Res> {
  factory $UserIsOnlyneGoogleAuthenSigninEventCopyWith(UserIsOnlyneGoogleAuthenSigninEvent value, $Res Function(UserIsOnlyneGoogleAuthenSigninEvent) _then) = _$UserIsOnlyneGoogleAuthenSigninEventCopyWithImpl;
@useResult
$Res call({
 bool userIsOnlyne
});




}
/// @nodoc
class _$UserIsOnlyneGoogleAuthenSigninEventCopyWithImpl<$Res>
    implements $UserIsOnlyneGoogleAuthenSigninEventCopyWith<$Res> {
  _$UserIsOnlyneGoogleAuthenSigninEventCopyWithImpl(this._self, this._then);

  final UserIsOnlyneGoogleAuthenSigninEvent _self;
  final $Res Function(UserIsOnlyneGoogleAuthenSigninEvent) _then;

/// Create a copy of SigninEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userIsOnlyne = null,}) {
  return _then(UserIsOnlyneGoogleAuthenSigninEvent(
userIsOnlyne: null == userIsOnlyne ? _self.userIsOnlyne : userIsOnlyne // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
