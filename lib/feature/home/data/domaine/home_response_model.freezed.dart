// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
ActiveUserProfileModel _$ActiveUserProfileModelFromJson(
  Map<String, dynamic> json
) {
    return _SActiveUserProfileModel.fromJson(
      json
    );
}

/// @nodoc
mixin _$ActiveUserProfileModel {

 String? get adresse; String? get autherKey; String? get email; String? get name; String? get serviceLibelle; String? get specialite; String? get telephone; String? get user; String? get averageBed; String? get description; String? get option; String? get roomNumber;
/// Create a copy of ActiveUserProfileModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActiveUserProfileModelCopyWith<ActiveUserProfileModel> get copyWith => _$ActiveUserProfileModelCopyWithImpl<ActiveUserProfileModel>(this as ActiveUserProfileModel, _$identity);

  /// Serializes this ActiveUserProfileModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActiveUserProfileModel&&(identical(other.adresse, adresse) || other.adresse == adresse)&&(identical(other.autherKey, autherKey) || other.autherKey == autherKey)&&(identical(other.email, email) || other.email == email)&&(identical(other.name, name) || other.name == name)&&(identical(other.serviceLibelle, serviceLibelle) || other.serviceLibelle == serviceLibelle)&&(identical(other.specialite, specialite) || other.specialite == specialite)&&(identical(other.telephone, telephone) || other.telephone == telephone)&&(identical(other.user, user) || other.user == user)&&(identical(other.averageBed, averageBed) || other.averageBed == averageBed)&&(identical(other.description, description) || other.description == description)&&(identical(other.option, option) || other.option == option)&&(identical(other.roomNumber, roomNumber) || other.roomNumber == roomNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,adresse,autherKey,email,name,serviceLibelle,specialite,telephone,user,averageBed,description,option,roomNumber);

@override
String toString() {
  return 'ActiveUserProfileModel(adresse: $adresse, autherKey: $autherKey, email: $email, name: $name, serviceLibelle: $serviceLibelle, specialite: $specialite, telephone: $telephone, user: $user, averageBed: $averageBed, description: $description, option: $option, roomNumber: $roomNumber)';
}


}

/// @nodoc
abstract mixin class $ActiveUserProfileModelCopyWith<$Res>  {
  factory $ActiveUserProfileModelCopyWith(ActiveUserProfileModel value, $Res Function(ActiveUserProfileModel) _then) = _$ActiveUserProfileModelCopyWithImpl;
@useResult
$Res call({
 String? adresse, String? autherKey, String? email, String? name, String? serviceLibelle, String? specialite, String? telephone, String? user, String? averageBed, String? description, String? option, String? roomNumber
});




}
/// @nodoc
class _$ActiveUserProfileModelCopyWithImpl<$Res>
    implements $ActiveUserProfileModelCopyWith<$Res> {
  _$ActiveUserProfileModelCopyWithImpl(this._self, this._then);

  final ActiveUserProfileModel _self;
  final $Res Function(ActiveUserProfileModel) _then;

/// Create a copy of ActiveUserProfileModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? adresse = freezed,Object? autherKey = freezed,Object? email = freezed,Object? name = freezed,Object? serviceLibelle = freezed,Object? specialite = freezed,Object? telephone = freezed,Object? user = freezed,Object? averageBed = freezed,Object? description = freezed,Object? option = freezed,Object? roomNumber = freezed,}) {
  return _then(_self.copyWith(
adresse: freezed == adresse ? _self.adresse : adresse // ignore: cast_nullable_to_non_nullable
as String?,autherKey: freezed == autherKey ? _self.autherKey : autherKey // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,serviceLibelle: freezed == serviceLibelle ? _self.serviceLibelle : serviceLibelle // ignore: cast_nullable_to_non_nullable
as String?,specialite: freezed == specialite ? _self.specialite : specialite // ignore: cast_nullable_to_non_nullable
as String?,telephone: freezed == telephone ? _self.telephone : telephone // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as String?,averageBed: freezed == averageBed ? _self.averageBed : averageBed // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,option: freezed == option ? _self.option : option // ignore: cast_nullable_to_non_nullable
as String?,roomNumber: freezed == roomNumber ? _self.roomNumber : roomNumber // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ActiveUserProfileModel].
extension ActiveUserProfileModelPatterns on ActiveUserProfileModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SActiveUserProfileModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SActiveUserProfileModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SActiveUserProfileModel value)  $default,){
final _that = this;
switch (_that) {
case _SActiveUserProfileModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SActiveUserProfileModel value)?  $default,){
final _that = this;
switch (_that) {
case _SActiveUserProfileModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? adresse,  String? autherKey,  String? email,  String? name,  String? serviceLibelle,  String? specialite,  String? telephone,  String? user,  String? averageBed,  String? description,  String? option,  String? roomNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SActiveUserProfileModel() when $default != null:
return $default(_that.adresse,_that.autherKey,_that.email,_that.name,_that.serviceLibelle,_that.specialite,_that.telephone,_that.user,_that.averageBed,_that.description,_that.option,_that.roomNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? adresse,  String? autherKey,  String? email,  String? name,  String? serviceLibelle,  String? specialite,  String? telephone,  String? user,  String? averageBed,  String? description,  String? option,  String? roomNumber)  $default,) {final _that = this;
switch (_that) {
case _SActiveUserProfileModel():
return $default(_that.adresse,_that.autherKey,_that.email,_that.name,_that.serviceLibelle,_that.specialite,_that.telephone,_that.user,_that.averageBed,_that.description,_that.option,_that.roomNumber);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? adresse,  String? autherKey,  String? email,  String? name,  String? serviceLibelle,  String? specialite,  String? telephone,  String? user,  String? averageBed,  String? description,  String? option,  String? roomNumber)?  $default,) {final _that = this;
switch (_that) {
case _SActiveUserProfileModel() when $default != null:
return $default(_that.adresse,_that.autherKey,_that.email,_that.name,_that.serviceLibelle,_that.specialite,_that.telephone,_that.user,_that.averageBed,_that.description,_that.option,_that.roomNumber);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SActiveUserProfileModel implements ActiveUserProfileModel {
   _SActiveUserProfileModel({required this.adresse, required this.autherKey, required this.email, required this.name, required this.serviceLibelle, required this.specialite, required this.telephone, required this.user, required this.averageBed, required this.description, required this.option, required this.roomNumber});
  factory _SActiveUserProfileModel.fromJson(Map<String, dynamic> json) => _$SActiveUserProfileModelFromJson(json);

@override final  String? adresse;
@override final  String? autherKey;
@override final  String? email;
@override final  String? name;
@override final  String? serviceLibelle;
@override final  String? specialite;
@override final  String? telephone;
@override final  String? user;
@override final  String? averageBed;
@override final  String? description;
@override final  String? option;
@override final  String? roomNumber;

/// Create a copy of ActiveUserProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SActiveUserProfileModelCopyWith<_SActiveUserProfileModel> get copyWith => __$SActiveUserProfileModelCopyWithImpl<_SActiveUserProfileModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SActiveUserProfileModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SActiveUserProfileModel&&(identical(other.adresse, adresse) || other.adresse == adresse)&&(identical(other.autherKey, autherKey) || other.autherKey == autherKey)&&(identical(other.email, email) || other.email == email)&&(identical(other.name, name) || other.name == name)&&(identical(other.serviceLibelle, serviceLibelle) || other.serviceLibelle == serviceLibelle)&&(identical(other.specialite, specialite) || other.specialite == specialite)&&(identical(other.telephone, telephone) || other.telephone == telephone)&&(identical(other.user, user) || other.user == user)&&(identical(other.averageBed, averageBed) || other.averageBed == averageBed)&&(identical(other.description, description) || other.description == description)&&(identical(other.option, option) || other.option == option)&&(identical(other.roomNumber, roomNumber) || other.roomNumber == roomNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,adresse,autherKey,email,name,serviceLibelle,specialite,telephone,user,averageBed,description,option,roomNumber);

@override
String toString() {
  return 'ActiveUserProfileModel(adresse: $adresse, autherKey: $autherKey, email: $email, name: $name, serviceLibelle: $serviceLibelle, specialite: $specialite, telephone: $telephone, user: $user, averageBed: $averageBed, description: $description, option: $option, roomNumber: $roomNumber)';
}


}

/// @nodoc
abstract mixin class _$SActiveUserProfileModelCopyWith<$Res> implements $ActiveUserProfileModelCopyWith<$Res> {
  factory _$SActiveUserProfileModelCopyWith(_SActiveUserProfileModel value, $Res Function(_SActiveUserProfileModel) _then) = __$SActiveUserProfileModelCopyWithImpl;
@override @useResult
$Res call({
 String? adresse, String? autherKey, String? email, String? name, String? serviceLibelle, String? specialite, String? telephone, String? user, String? averageBed, String? description, String? option, String? roomNumber
});




}
/// @nodoc
class __$SActiveUserProfileModelCopyWithImpl<$Res>
    implements _$SActiveUserProfileModelCopyWith<$Res> {
  __$SActiveUserProfileModelCopyWithImpl(this._self, this._then);

  final _SActiveUserProfileModel _self;
  final $Res Function(_SActiveUserProfileModel) _then;

/// Create a copy of ActiveUserProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? adresse = freezed,Object? autherKey = freezed,Object? email = freezed,Object? name = freezed,Object? serviceLibelle = freezed,Object? specialite = freezed,Object? telephone = freezed,Object? user = freezed,Object? averageBed = freezed,Object? description = freezed,Object? option = freezed,Object? roomNumber = freezed,}) {
  return _then(_SActiveUserProfileModel(
adresse: freezed == adresse ? _self.adresse : adresse // ignore: cast_nullable_to_non_nullable
as String?,autherKey: freezed == autherKey ? _self.autherKey : autherKey // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,serviceLibelle: freezed == serviceLibelle ? _self.serviceLibelle : serviceLibelle // ignore: cast_nullable_to_non_nullable
as String?,specialite: freezed == specialite ? _self.specialite : specialite // ignore: cast_nullable_to_non_nullable
as String?,telephone: freezed == telephone ? _self.telephone : telephone // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as String?,averageBed: freezed == averageBed ? _self.averageBed : averageBed // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,option: freezed == option ? _self.option : option // ignore: cast_nullable_to_non_nullable
as String?,roomNumber: freezed == roomNumber ? _self.roomNumber : roomNumber // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
