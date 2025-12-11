// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_by_mail_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthByMailEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthByMailEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthByMailEvent()';
}


}

/// @nodoc
class $AuthByMailEventCopyWith<$Res>  {
$AuthByMailEventCopyWith(AuthByMailEvent _, $Res Function(AuthByMailEvent) __);
}


/// Adds pattern-matching-related methods to [AuthByMailEvent].
extension AuthByMailEventPatterns on AuthByMailEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ChangeEmailAuthByMailEvent value)?  changeEmail,TResult Function( ChangePasswordAuthByMailEvent value)?  changePassword,TResult Function( SubmitAuthByMailEvent value)?  submitSignup,TResult Function( SubmitSigninMailEvent value)?  submitSignin,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ChangeEmailAuthByMailEvent() when changeEmail != null:
return changeEmail(_that);case ChangePasswordAuthByMailEvent() when changePassword != null:
return changePassword(_that);case SubmitAuthByMailEvent() when submitSignup != null:
return submitSignup(_that);case SubmitSigninMailEvent() when submitSignin != null:
return submitSignin(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ChangeEmailAuthByMailEvent value)  changeEmail,required TResult Function( ChangePasswordAuthByMailEvent value)  changePassword,required TResult Function( SubmitAuthByMailEvent value)  submitSignup,required TResult Function( SubmitSigninMailEvent value)  submitSignin,}){
final _that = this;
switch (_that) {
case ChangeEmailAuthByMailEvent():
return changeEmail(_that);case ChangePasswordAuthByMailEvent():
return changePassword(_that);case SubmitAuthByMailEvent():
return submitSignup(_that);case SubmitSigninMailEvent():
return submitSignin(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ChangeEmailAuthByMailEvent value)?  changeEmail,TResult? Function( ChangePasswordAuthByMailEvent value)?  changePassword,TResult? Function( SubmitAuthByMailEvent value)?  submitSignup,TResult? Function( SubmitSigninMailEvent value)?  submitSignin,}){
final _that = this;
switch (_that) {
case ChangeEmailAuthByMailEvent() when changeEmail != null:
return changeEmail(_that);case ChangePasswordAuthByMailEvent() when changePassword != null:
return changePassword(_that);case SubmitAuthByMailEvent() when submitSignup != null:
return submitSignup(_that);case SubmitSigninMailEvent() when submitSignin != null:
return submitSignin(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String email)?  changeEmail,TResult Function( String password)?  changePassword,TResult Function()?  submitSignup,TResult Function()?  submitSignin,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ChangeEmailAuthByMailEvent() when changeEmail != null:
return changeEmail(_that.email);case ChangePasswordAuthByMailEvent() when changePassword != null:
return changePassword(_that.password);case SubmitAuthByMailEvent() when submitSignup != null:
return submitSignup();case SubmitSigninMailEvent() when submitSignin != null:
return submitSignin();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String email)  changeEmail,required TResult Function( String password)  changePassword,required TResult Function()  submitSignup,required TResult Function()  submitSignin,}) {final _that = this;
switch (_that) {
case ChangeEmailAuthByMailEvent():
return changeEmail(_that.email);case ChangePasswordAuthByMailEvent():
return changePassword(_that.password);case SubmitAuthByMailEvent():
return submitSignup();case SubmitSigninMailEvent():
return submitSignin();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String email)?  changeEmail,TResult? Function( String password)?  changePassword,TResult? Function()?  submitSignup,TResult? Function()?  submitSignin,}) {final _that = this;
switch (_that) {
case ChangeEmailAuthByMailEvent() when changeEmail != null:
return changeEmail(_that.email);case ChangePasswordAuthByMailEvent() when changePassword != null:
return changePassword(_that.password);case SubmitAuthByMailEvent() when submitSignup != null:
return submitSignup();case SubmitSigninMailEvent() when submitSignin != null:
return submitSignin();case _:
  return null;

}
}

}

/// @nodoc


class ChangeEmailAuthByMailEvent implements AuthByMailEvent {
   ChangeEmailAuthByMailEvent(this.email);
  

 final  String email;

/// Create a copy of AuthByMailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeEmailAuthByMailEventCopyWith<ChangeEmailAuthByMailEvent> get copyWith => _$ChangeEmailAuthByMailEventCopyWithImpl<ChangeEmailAuthByMailEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeEmailAuthByMailEvent&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'AuthByMailEvent.changeEmail(email: $email)';
}


}

/// @nodoc
abstract mixin class $ChangeEmailAuthByMailEventCopyWith<$Res> implements $AuthByMailEventCopyWith<$Res> {
  factory $ChangeEmailAuthByMailEventCopyWith(ChangeEmailAuthByMailEvent value, $Res Function(ChangeEmailAuthByMailEvent) _then) = _$ChangeEmailAuthByMailEventCopyWithImpl;
@useResult
$Res call({
 String email
});




}
/// @nodoc
class _$ChangeEmailAuthByMailEventCopyWithImpl<$Res>
    implements $ChangeEmailAuthByMailEventCopyWith<$Res> {
  _$ChangeEmailAuthByMailEventCopyWithImpl(this._self, this._then);

  final ChangeEmailAuthByMailEvent _self;
  final $Res Function(ChangeEmailAuthByMailEvent) _then;

/// Create a copy of AuthByMailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(ChangeEmailAuthByMailEvent(
null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ChangePasswordAuthByMailEvent implements AuthByMailEvent {
   ChangePasswordAuthByMailEvent(this.password);
  

 final  String password;

/// Create a copy of AuthByMailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangePasswordAuthByMailEventCopyWith<ChangePasswordAuthByMailEvent> get copyWith => _$ChangePasswordAuthByMailEventCopyWithImpl<ChangePasswordAuthByMailEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangePasswordAuthByMailEvent&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,password);

@override
String toString() {
  return 'AuthByMailEvent.changePassword(password: $password)';
}


}

/// @nodoc
abstract mixin class $ChangePasswordAuthByMailEventCopyWith<$Res> implements $AuthByMailEventCopyWith<$Res> {
  factory $ChangePasswordAuthByMailEventCopyWith(ChangePasswordAuthByMailEvent value, $Res Function(ChangePasswordAuthByMailEvent) _then) = _$ChangePasswordAuthByMailEventCopyWithImpl;
@useResult
$Res call({
 String password
});




}
/// @nodoc
class _$ChangePasswordAuthByMailEventCopyWithImpl<$Res>
    implements $ChangePasswordAuthByMailEventCopyWith<$Res> {
  _$ChangePasswordAuthByMailEventCopyWithImpl(this._self, this._then);

  final ChangePasswordAuthByMailEvent _self;
  final $Res Function(ChangePasswordAuthByMailEvent) _then;

/// Create a copy of AuthByMailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? password = null,}) {
  return _then(ChangePasswordAuthByMailEvent(
null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SubmitAuthByMailEvent implements AuthByMailEvent {
   SubmitAuthByMailEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitAuthByMailEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthByMailEvent.submitSignup()';
}


}




/// @nodoc


class SubmitSigninMailEvent implements AuthByMailEvent {
   SubmitSigninMailEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitSigninMailEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthByMailEvent.submitSignin()';
}


}




// dart format on
