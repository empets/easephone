// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authen_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
ProfileUser _$ProfileUserFromJson(
  Map<String, dynamic> json
) {
    return _SProfileUser.fromJson(
      json
    );
}

/// @nodoc
mixin _$ProfileUser {

 String get email; String get password; String get userId;
/// Create a copy of ProfileUser
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileUserCopyWith<ProfileUser> get copyWith => _$ProfileUserCopyWithImpl<ProfileUser>(this as ProfileUser, _$identity);

  /// Serializes this ProfileUser to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileUser&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,password,userId);

@override
String toString() {
  return 'ProfileUser(email: $email, password: $password, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $ProfileUserCopyWith<$Res>  {
  factory $ProfileUserCopyWith(ProfileUser value, $Res Function(ProfileUser) _then) = _$ProfileUserCopyWithImpl;
@useResult
$Res call({
 String email, String password, String userId
});




}
/// @nodoc
class _$ProfileUserCopyWithImpl<$Res>
    implements $ProfileUserCopyWith<$Res> {
  _$ProfileUserCopyWithImpl(this._self, this._then);

  final ProfileUser _self;
  final $Res Function(ProfileUser) _then;

/// Create a copy of ProfileUser
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? password = null,Object? userId = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfileUser].
extension ProfileUserPatterns on ProfileUser {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SProfileUser value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SProfileUser() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SProfileUser value)  $default,){
final _that = this;
switch (_that) {
case _SProfileUser():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SProfileUser value)?  $default,){
final _that = this;
switch (_that) {
case _SProfileUser() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email,  String password,  String userId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SProfileUser() when $default != null:
return $default(_that.email,_that.password,_that.userId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email,  String password,  String userId)  $default,) {final _that = this;
switch (_that) {
case _SProfileUser():
return $default(_that.email,_that.password,_that.userId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email,  String password,  String userId)?  $default,) {final _that = this;
switch (_that) {
case _SProfileUser() when $default != null:
return $default(_that.email,_that.password,_that.userId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SProfileUser implements ProfileUser {
   _SProfileUser({required this.email, required this.password, required this.userId});
  factory _SProfileUser.fromJson(Map<String, dynamic> json) => _$SProfileUserFromJson(json);

@override final  String email;
@override final  String password;
@override final  String userId;

/// Create a copy of ProfileUser
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SProfileUserCopyWith<_SProfileUser> get copyWith => __$SProfileUserCopyWithImpl<_SProfileUser>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SProfileUserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SProfileUser&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,password,userId);

@override
String toString() {
  return 'ProfileUser(email: $email, password: $password, userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$SProfileUserCopyWith<$Res> implements $ProfileUserCopyWith<$Res> {
  factory _$SProfileUserCopyWith(_SProfileUser value, $Res Function(_SProfileUser) _then) = __$SProfileUserCopyWithImpl;
@override @useResult
$Res call({
 String email, String password, String userId
});




}
/// @nodoc
class __$SProfileUserCopyWithImpl<$Res>
    implements _$SProfileUserCopyWith<$Res> {
  __$SProfileUserCopyWithImpl(this._self, this._then);

  final _SProfileUser _self;
  final $Res Function(_SProfileUser) _then;

/// Create a copy of ProfileUser
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,Object? userId = null,}) {
  return _then(_SProfileUser(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
