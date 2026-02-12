// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentification_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthentificationEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthentificationEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthentificationEvent()';
}


}

/// @nodoc
class $AuthentificationEventCopyWith<$Res>  {
$AuthentificationEventCopyWith(AuthentificationEvent _, $Res Function(AuthentificationEvent) __);
}


/// Adds pattern-matching-related methods to [AuthentificationEvent].
extension AuthentificationEventPatterns on AuthentificationEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ChangeEmailAuthentificationEvent value)?  changeEmail,TResult Function( ChangePasswordAuthentificationEvent value)?  changePassword,TResult Function( ChangeRemenberAuthentificationEvent value)?  changeRemenber,TResult Function( SubmitAuthentificationEvent value)?  submitSignup,TResult Function( SubmitSigninAuthentificationEvent value)?  submitSignin,TResult Function( ResetAuthentificationSigninAuthentificationEvent value)?  resetAuthentification,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ChangeEmailAuthentificationEvent() when changeEmail != null:
return changeEmail(_that);case ChangePasswordAuthentificationEvent() when changePassword != null:
return changePassword(_that);case ChangeRemenberAuthentificationEvent() when changeRemenber != null:
return changeRemenber(_that);case SubmitAuthentificationEvent() when submitSignup != null:
return submitSignup(_that);case SubmitSigninAuthentificationEvent() when submitSignin != null:
return submitSignin(_that);case ResetAuthentificationSigninAuthentificationEvent() when resetAuthentification != null:
return resetAuthentification(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ChangeEmailAuthentificationEvent value)  changeEmail,required TResult Function( ChangePasswordAuthentificationEvent value)  changePassword,required TResult Function( ChangeRemenberAuthentificationEvent value)  changeRemenber,required TResult Function( SubmitAuthentificationEvent value)  submitSignup,required TResult Function( SubmitSigninAuthentificationEvent value)  submitSignin,required TResult Function( ResetAuthentificationSigninAuthentificationEvent value)  resetAuthentification,}){
final _that = this;
switch (_that) {
case ChangeEmailAuthentificationEvent():
return changeEmail(_that);case ChangePasswordAuthentificationEvent():
return changePassword(_that);case ChangeRemenberAuthentificationEvent():
return changeRemenber(_that);case SubmitAuthentificationEvent():
return submitSignup(_that);case SubmitSigninAuthentificationEvent():
return submitSignin(_that);case ResetAuthentificationSigninAuthentificationEvent():
return resetAuthentification(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ChangeEmailAuthentificationEvent value)?  changeEmail,TResult? Function( ChangePasswordAuthentificationEvent value)?  changePassword,TResult? Function( ChangeRemenberAuthentificationEvent value)?  changeRemenber,TResult? Function( SubmitAuthentificationEvent value)?  submitSignup,TResult? Function( SubmitSigninAuthentificationEvent value)?  submitSignin,TResult? Function( ResetAuthentificationSigninAuthentificationEvent value)?  resetAuthentification,}){
final _that = this;
switch (_that) {
case ChangeEmailAuthentificationEvent() when changeEmail != null:
return changeEmail(_that);case ChangePasswordAuthentificationEvent() when changePassword != null:
return changePassword(_that);case ChangeRemenberAuthentificationEvent() when changeRemenber != null:
return changeRemenber(_that);case SubmitAuthentificationEvent() when submitSignup != null:
return submitSignup(_that);case SubmitSigninAuthentificationEvent() when submitSignin != null:
return submitSignin(_that);case ResetAuthentificationSigninAuthentificationEvent() when resetAuthentification != null:
return resetAuthentification(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String email)?  changeEmail,TResult Function( String password)?  changePassword,TResult Function( String remenber)?  changeRemenber,TResult Function()?  submitSignup,TResult Function()?  submitSignin,TResult Function()?  resetAuthentification,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ChangeEmailAuthentificationEvent() when changeEmail != null:
return changeEmail(_that.email);case ChangePasswordAuthentificationEvent() when changePassword != null:
return changePassword(_that.password);case ChangeRemenberAuthentificationEvent() when changeRemenber != null:
return changeRemenber(_that.remenber);case SubmitAuthentificationEvent() when submitSignup != null:
return submitSignup();case SubmitSigninAuthentificationEvent() when submitSignin != null:
return submitSignin();case ResetAuthentificationSigninAuthentificationEvent() when resetAuthentification != null:
return resetAuthentification();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String email)  changeEmail,required TResult Function( String password)  changePassword,required TResult Function( String remenber)  changeRemenber,required TResult Function()  submitSignup,required TResult Function()  submitSignin,required TResult Function()  resetAuthentification,}) {final _that = this;
switch (_that) {
case ChangeEmailAuthentificationEvent():
return changeEmail(_that.email);case ChangePasswordAuthentificationEvent():
return changePassword(_that.password);case ChangeRemenberAuthentificationEvent():
return changeRemenber(_that.remenber);case SubmitAuthentificationEvent():
return submitSignup();case SubmitSigninAuthentificationEvent():
return submitSignin();case ResetAuthentificationSigninAuthentificationEvent():
return resetAuthentification();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String email)?  changeEmail,TResult? Function( String password)?  changePassword,TResult? Function( String remenber)?  changeRemenber,TResult? Function()?  submitSignup,TResult? Function()?  submitSignin,TResult? Function()?  resetAuthentification,}) {final _that = this;
switch (_that) {
case ChangeEmailAuthentificationEvent() when changeEmail != null:
return changeEmail(_that.email);case ChangePasswordAuthentificationEvent() when changePassword != null:
return changePassword(_that.password);case ChangeRemenberAuthentificationEvent() when changeRemenber != null:
return changeRemenber(_that.remenber);case SubmitAuthentificationEvent() when submitSignup != null:
return submitSignup();case SubmitSigninAuthentificationEvent() when submitSignin != null:
return submitSignin();case ResetAuthentificationSigninAuthentificationEvent() when resetAuthentification != null:
return resetAuthentification();case _:
  return null;

}
}

}

/// @nodoc


class ChangeEmailAuthentificationEvent implements AuthentificationEvent {
   ChangeEmailAuthentificationEvent(this.email);
  

 final  String email;

/// Create a copy of AuthentificationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeEmailAuthentificationEventCopyWith<ChangeEmailAuthentificationEvent> get copyWith => _$ChangeEmailAuthentificationEventCopyWithImpl<ChangeEmailAuthentificationEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeEmailAuthentificationEvent&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'AuthentificationEvent.changeEmail(email: $email)';
}


}

/// @nodoc
abstract mixin class $ChangeEmailAuthentificationEventCopyWith<$Res> implements $AuthentificationEventCopyWith<$Res> {
  factory $ChangeEmailAuthentificationEventCopyWith(ChangeEmailAuthentificationEvent value, $Res Function(ChangeEmailAuthentificationEvent) _then) = _$ChangeEmailAuthentificationEventCopyWithImpl;
@useResult
$Res call({
 String email
});




}
/// @nodoc
class _$ChangeEmailAuthentificationEventCopyWithImpl<$Res>
    implements $ChangeEmailAuthentificationEventCopyWith<$Res> {
  _$ChangeEmailAuthentificationEventCopyWithImpl(this._self, this._then);

  final ChangeEmailAuthentificationEvent _self;
  final $Res Function(ChangeEmailAuthentificationEvent) _then;

/// Create a copy of AuthentificationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(ChangeEmailAuthentificationEvent(
null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ChangePasswordAuthentificationEvent implements AuthentificationEvent {
   ChangePasswordAuthentificationEvent(this.password);
  

 final  String password;

/// Create a copy of AuthentificationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangePasswordAuthentificationEventCopyWith<ChangePasswordAuthentificationEvent> get copyWith => _$ChangePasswordAuthentificationEventCopyWithImpl<ChangePasswordAuthentificationEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangePasswordAuthentificationEvent&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,password);

@override
String toString() {
  return 'AuthentificationEvent.changePassword(password: $password)';
}


}

/// @nodoc
abstract mixin class $ChangePasswordAuthentificationEventCopyWith<$Res> implements $AuthentificationEventCopyWith<$Res> {
  factory $ChangePasswordAuthentificationEventCopyWith(ChangePasswordAuthentificationEvent value, $Res Function(ChangePasswordAuthentificationEvent) _then) = _$ChangePasswordAuthentificationEventCopyWithImpl;
@useResult
$Res call({
 String password
});




}
/// @nodoc
class _$ChangePasswordAuthentificationEventCopyWithImpl<$Res>
    implements $ChangePasswordAuthentificationEventCopyWith<$Res> {
  _$ChangePasswordAuthentificationEventCopyWithImpl(this._self, this._then);

  final ChangePasswordAuthentificationEvent _self;
  final $Res Function(ChangePasswordAuthentificationEvent) _then;

/// Create a copy of AuthentificationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? password = null,}) {
  return _then(ChangePasswordAuthentificationEvent(
null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ChangeRemenberAuthentificationEvent implements AuthentificationEvent {
   ChangeRemenberAuthentificationEvent(this.remenber);
  

 final  String remenber;

/// Create a copy of AuthentificationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeRemenberAuthentificationEventCopyWith<ChangeRemenberAuthentificationEvent> get copyWith => _$ChangeRemenberAuthentificationEventCopyWithImpl<ChangeRemenberAuthentificationEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeRemenberAuthentificationEvent&&(identical(other.remenber, remenber) || other.remenber == remenber));
}


@override
int get hashCode => Object.hash(runtimeType,remenber);

@override
String toString() {
  return 'AuthentificationEvent.changeRemenber(remenber: $remenber)';
}


}

/// @nodoc
abstract mixin class $ChangeRemenberAuthentificationEventCopyWith<$Res> implements $AuthentificationEventCopyWith<$Res> {
  factory $ChangeRemenberAuthentificationEventCopyWith(ChangeRemenberAuthentificationEvent value, $Res Function(ChangeRemenberAuthentificationEvent) _then) = _$ChangeRemenberAuthentificationEventCopyWithImpl;
@useResult
$Res call({
 String remenber
});




}
/// @nodoc
class _$ChangeRemenberAuthentificationEventCopyWithImpl<$Res>
    implements $ChangeRemenberAuthentificationEventCopyWith<$Res> {
  _$ChangeRemenberAuthentificationEventCopyWithImpl(this._self, this._then);

  final ChangeRemenberAuthentificationEvent _self;
  final $Res Function(ChangeRemenberAuthentificationEvent) _then;

/// Create a copy of AuthentificationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? remenber = null,}) {
  return _then(ChangeRemenberAuthentificationEvent(
null == remenber ? _self.remenber : remenber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SubmitAuthentificationEvent implements AuthentificationEvent {
   SubmitAuthentificationEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitAuthentificationEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthentificationEvent.submitSignup()';
}


}




/// @nodoc


class SubmitSigninAuthentificationEvent implements AuthentificationEvent {
   SubmitSigninAuthentificationEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitSigninAuthentificationEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthentificationEvent.submitSignin()';
}


}




/// @nodoc


class ResetAuthentificationSigninAuthentificationEvent implements AuthentificationEvent {
   ResetAuthentificationSigninAuthentificationEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetAuthentificationSigninAuthentificationEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthentificationEvent.resetAuthentification()';
}


}




// dart format on
