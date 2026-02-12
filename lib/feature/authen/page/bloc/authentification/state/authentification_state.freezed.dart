// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentification_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthentificationState {

 EmailFormz get email; PhoneFormz get password; PhoneFormz get remenber; FormzSubmissionStatus get status; String get errorMessage; bool get isValide;
/// Create a copy of AuthentificationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthentificationStateCopyWith<AuthentificationState> get copyWith => _$AuthentificationStateCopyWithImpl<AuthentificationState>(this as AuthentificationState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthentificationState&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.remenber, remenber) || other.remenber == remenber)&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isValide, isValide) || other.isValide == isValide));
}


@override
int get hashCode => Object.hash(runtimeType,email,password,remenber,status,errorMessage,isValide);

@override
String toString() {
  return 'AuthentificationState(email: $email, password: $password, remenber: $remenber, status: $status, errorMessage: $errorMessage, isValide: $isValide)';
}


}

/// @nodoc
abstract mixin class $AuthentificationStateCopyWith<$Res>  {
  factory $AuthentificationStateCopyWith(AuthentificationState value, $Res Function(AuthentificationState) _then) = _$AuthentificationStateCopyWithImpl;
@useResult
$Res call({
 EmailFormz email, PhoneFormz password, PhoneFormz remenber, FormzSubmissionStatus status, String errorMessage, bool isValide
});




}
/// @nodoc
class _$AuthentificationStateCopyWithImpl<$Res>
    implements $AuthentificationStateCopyWith<$Res> {
  _$AuthentificationStateCopyWithImpl(this._self, this._then);

  final AuthentificationState _self;
  final $Res Function(AuthentificationState) _then;

/// Create a copy of AuthentificationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? password = null,Object? remenber = null,Object? status = null,Object? errorMessage = null,Object? isValide = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as EmailFormz,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as PhoneFormz,remenber: null == remenber ? _self.remenber : remenber // ignore: cast_nullable_to_non_nullable
as PhoneFormz,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FormzSubmissionStatus,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,isValide: null == isValide ? _self.isValide : isValide // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthentificationState].
extension AuthentificationStatePatterns on AuthentificationState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( SAuthentificationState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case SAuthentificationState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( SAuthentificationState value)  $default,){
final _that = this;
switch (_that) {
case SAuthentificationState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( SAuthentificationState value)?  $default,){
final _that = this;
switch (_that) {
case SAuthentificationState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( EmailFormz email,  PhoneFormz password,  PhoneFormz remenber,  FormzSubmissionStatus status,  String errorMessage,  bool isValide)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case SAuthentificationState() when $default != null:
return $default(_that.email,_that.password,_that.remenber,_that.status,_that.errorMessage,_that.isValide);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( EmailFormz email,  PhoneFormz password,  PhoneFormz remenber,  FormzSubmissionStatus status,  String errorMessage,  bool isValide)  $default,) {final _that = this;
switch (_that) {
case SAuthentificationState():
return $default(_that.email,_that.password,_that.remenber,_that.status,_that.errorMessage,_that.isValide);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( EmailFormz email,  PhoneFormz password,  PhoneFormz remenber,  FormzSubmissionStatus status,  String errorMessage,  bool isValide)?  $default,) {final _that = this;
switch (_that) {
case SAuthentificationState() when $default != null:
return $default(_that.email,_that.password,_that.remenber,_that.status,_that.errorMessage,_that.isValide);case _:
  return null;

}
}

}

/// @nodoc


class SAuthentificationState implements AuthentificationState {
   SAuthentificationState({required this.email, required this.password, required this.remenber, required this.status, required this.errorMessage, required this.isValide});
  

@override final  EmailFormz email;
@override final  PhoneFormz password;
@override final  PhoneFormz remenber;
@override final  FormzSubmissionStatus status;
@override final  String errorMessage;
@override final  bool isValide;

/// Create a copy of AuthentificationState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SAuthentificationStateCopyWith<SAuthentificationState> get copyWith => _$SAuthentificationStateCopyWithImpl<SAuthentificationState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SAuthentificationState&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.remenber, remenber) || other.remenber == remenber)&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isValide, isValide) || other.isValide == isValide));
}


@override
int get hashCode => Object.hash(runtimeType,email,password,remenber,status,errorMessage,isValide);

@override
String toString() {
  return 'AuthentificationState(email: $email, password: $password, remenber: $remenber, status: $status, errorMessage: $errorMessage, isValide: $isValide)';
}


}

/// @nodoc
abstract mixin class $SAuthentificationStateCopyWith<$Res> implements $AuthentificationStateCopyWith<$Res> {
  factory $SAuthentificationStateCopyWith(SAuthentificationState value, $Res Function(SAuthentificationState) _then) = _$SAuthentificationStateCopyWithImpl;
@override @useResult
$Res call({
 EmailFormz email, PhoneFormz password, PhoneFormz remenber, FormzSubmissionStatus status, String errorMessage, bool isValide
});




}
/// @nodoc
class _$SAuthentificationStateCopyWithImpl<$Res>
    implements $SAuthentificationStateCopyWith<$Res> {
  _$SAuthentificationStateCopyWithImpl(this._self, this._then);

  final SAuthentificationState _self;
  final $Res Function(SAuthentificationState) _then;

/// Create a copy of AuthentificationState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,Object? remenber = null,Object? status = null,Object? errorMessage = null,Object? isValide = null,}) {
  return _then(SAuthentificationState(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as EmailFormz,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as PhoneFormz,remenber: null == remenber ? _self.remenber : remenber // ignore: cast_nullable_to_non_nullable
as PhoneFormz,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FormzSubmissionStatus,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,isValide: null == isValide ? _self.isValide : isValide // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
