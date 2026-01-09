// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authen_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
ProfileUserModel _$ProfileUserModelFromJson(
  Map<String, dynamic> json
) {
    return _SProfileUserModel.fromJson(
      json
    );
}

/// @nodoc
mixin _$ProfileUserModel {

 String? get email; String? get password; String? get userId;
/// Create a copy of ProfileUserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileUserModelCopyWith<ProfileUserModel> get copyWith => _$ProfileUserModelCopyWithImpl<ProfileUserModel>(this as ProfileUserModel, _$identity);

  /// Serializes this ProfileUserModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileUserModel&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,password,userId);

@override
String toString() {
  return 'ProfileUserModel(email: $email, password: $password, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $ProfileUserModelCopyWith<$Res>  {
  factory $ProfileUserModelCopyWith(ProfileUserModel value, $Res Function(ProfileUserModel) _then) = _$ProfileUserModelCopyWithImpl;
@useResult
$Res call({
 String? email, String? password, String? userId
});




}
/// @nodoc
class _$ProfileUserModelCopyWithImpl<$Res>
    implements $ProfileUserModelCopyWith<$Res> {
  _$ProfileUserModelCopyWithImpl(this._self, this._then);

  final ProfileUserModel _self;
  final $Res Function(ProfileUserModel) _then;

/// Create a copy of ProfileUserModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = freezed,Object? password = freezed,Object? userId = freezed,}) {
  return _then(_self.copyWith(
email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfileUserModel].
extension ProfileUserModelPatterns on ProfileUserModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SProfileUserModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SProfileUserModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SProfileUserModel value)  $default,){
final _that = this;
switch (_that) {
case _SProfileUserModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SProfileUserModel value)?  $default,){
final _that = this;
switch (_that) {
case _SProfileUserModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? email,  String? password,  String? userId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SProfileUserModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? email,  String? password,  String? userId)  $default,) {final _that = this;
switch (_that) {
case _SProfileUserModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? email,  String? password,  String? userId)?  $default,) {final _that = this;
switch (_that) {
case _SProfileUserModel() when $default != null:
return $default(_that.email,_that.password,_that.userId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SProfileUserModel implements ProfileUserModel {
   _SProfileUserModel({required this.email, required this.password, required this.userId});
  factory _SProfileUserModel.fromJson(Map<String, dynamic> json) => _$SProfileUserModelFromJson(json);

@override final  String? email;
@override final  String? password;
@override final  String? userId;

/// Create a copy of ProfileUserModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SProfileUserModelCopyWith<_SProfileUserModel> get copyWith => __$SProfileUserModelCopyWithImpl<_SProfileUserModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SProfileUserModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SProfileUserModel&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,password,userId);

@override
String toString() {
  return 'ProfileUserModel(email: $email, password: $password, userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$SProfileUserModelCopyWith<$Res> implements $ProfileUserModelCopyWith<$Res> {
  factory _$SProfileUserModelCopyWith(_SProfileUserModel value, $Res Function(_SProfileUserModel) _then) = __$SProfileUserModelCopyWithImpl;
@override @useResult
$Res call({
 String? email, String? password, String? userId
});




}
/// @nodoc
class __$SProfileUserModelCopyWithImpl<$Res>
    implements _$SProfileUserModelCopyWith<$Res> {
  __$SProfileUserModelCopyWithImpl(this._self, this._then);

  final _SProfileUserModel _self;
  final $Res Function(_SProfileUserModel) _then;

/// Create a copy of ProfileUserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = freezed,Object? password = freezed,Object? userId = freezed,}) {
  return _then(_SProfileUserModel(
email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
