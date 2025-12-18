// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authen_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
RequestAuthen _$RequestAuthenFromJson(
  Map<String, dynamic> json
) {
    return _SRequestAuthen.fromJson(
      json
    );
}

/// @nodoc
mixin _$RequestAuthen {

 String get email; String get password;
/// Create a copy of RequestAuthen
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestAuthenCopyWith<RequestAuthen> get copyWith => _$RequestAuthenCopyWithImpl<RequestAuthen>(this as RequestAuthen, _$identity);

  /// Serializes this RequestAuthen to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestAuthen&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'RequestAuthen(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class $RequestAuthenCopyWith<$Res>  {
  factory $RequestAuthenCopyWith(RequestAuthen value, $Res Function(RequestAuthen) _then) = _$RequestAuthenCopyWithImpl;
@useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class _$RequestAuthenCopyWithImpl<$Res>
    implements $RequestAuthenCopyWith<$Res> {
  _$RequestAuthenCopyWithImpl(this._self, this._then);

  final RequestAuthen _self;
  final $Res Function(RequestAuthen) _then;

/// Create a copy of RequestAuthen
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? password = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RequestAuthen].
extension RequestAuthenPatterns on RequestAuthen {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SRequestAuthen value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SRequestAuthen() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SRequestAuthen value)  $default,){
final _that = this;
switch (_that) {
case _SRequestAuthen():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SRequestAuthen value)?  $default,){
final _that = this;
switch (_that) {
case _SRequestAuthen() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email,  String password)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SRequestAuthen() when $default != null:
return $default(_that.email,_that.password);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email,  String password)  $default,) {final _that = this;
switch (_that) {
case _SRequestAuthen():
return $default(_that.email,_that.password);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email,  String password)?  $default,) {final _that = this;
switch (_that) {
case _SRequestAuthen() when $default != null:
return $default(_that.email,_that.password);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SRequestAuthen implements RequestAuthen {
   _SRequestAuthen({required this.email, required this.password});
  factory _SRequestAuthen.fromJson(Map<String, dynamic> json) => _$SRequestAuthenFromJson(json);

@override final  String email;
@override final  String password;

/// Create a copy of RequestAuthen
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SRequestAuthenCopyWith<_SRequestAuthen> get copyWith => __$SRequestAuthenCopyWithImpl<_SRequestAuthen>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SRequestAuthenToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SRequestAuthen&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'RequestAuthen(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class _$SRequestAuthenCopyWith<$Res> implements $RequestAuthenCopyWith<$Res> {
  factory _$SRequestAuthenCopyWith(_SRequestAuthen value, $Res Function(_SRequestAuthen) _then) = __$SRequestAuthenCopyWithImpl;
@override @useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class __$SRequestAuthenCopyWithImpl<$Res>
    implements _$SRequestAuthenCopyWith<$Res> {
  __$SRequestAuthenCopyWithImpl(this._self, this._then);

  final _SRequestAuthen _self;
  final $Res Function(_SRequestAuthen) _then;

/// Create a copy of RequestAuthen
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,}) {
  return _then(_SRequestAuthen(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

RequestCreateCompteHomeInformation _$RequestCreateCompteHomeInformationFromJson(
  Map<String, dynamic> json
) {
    return _SRequestCreateCompteHomeInformation.fromJson(
      json
    );
}

/// @nodoc
mixin _$RequestCreateCompteHomeInformation {

 String? get name; String? get specialite; String? get telephone; String? get telephon2; String? get adresse; String? get email; String? get autherKey; String? get roomNumber; String? get averageBed; String? get option; String? get description; String? get emage; String? get formOne; String? get formTwo; String? get formTherd;
/// Create a copy of RequestCreateCompteHomeInformation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestCreateCompteHomeInformationCopyWith<RequestCreateCompteHomeInformation> get copyWith => _$RequestCreateCompteHomeInformationCopyWithImpl<RequestCreateCompteHomeInformation>(this as RequestCreateCompteHomeInformation, _$identity);

  /// Serializes this RequestCreateCompteHomeInformation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestCreateCompteHomeInformation&&(identical(other.name, name) || other.name == name)&&(identical(other.specialite, specialite) || other.specialite == specialite)&&(identical(other.telephone, telephone) || other.telephone == telephone)&&(identical(other.telephon2, telephon2) || other.telephon2 == telephon2)&&(identical(other.adresse, adresse) || other.adresse == adresse)&&(identical(other.email, email) || other.email == email)&&(identical(other.autherKey, autherKey) || other.autherKey == autherKey)&&(identical(other.roomNumber, roomNumber) || other.roomNumber == roomNumber)&&(identical(other.averageBed, averageBed) || other.averageBed == averageBed)&&(identical(other.option, option) || other.option == option)&&(identical(other.description, description) || other.description == description)&&(identical(other.emage, emage) || other.emage == emage)&&(identical(other.formOne, formOne) || other.formOne == formOne)&&(identical(other.formTwo, formTwo) || other.formTwo == formTwo)&&(identical(other.formTherd, formTherd) || other.formTherd == formTherd));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,specialite,telephone,telephon2,adresse,email,autherKey,roomNumber,averageBed,option,description,emage,formOne,formTwo,formTherd);

@override
String toString() {
  return 'RequestCreateCompteHomeInformation(name: $name, specialite: $specialite, telephone: $telephone, telephon2: $telephon2, adresse: $adresse, email: $email, autherKey: $autherKey, roomNumber: $roomNumber, averageBed: $averageBed, option: $option, description: $description, emage: $emage, formOne: $formOne, formTwo: $formTwo, formTherd: $formTherd)';
}


}

/// @nodoc
abstract mixin class $RequestCreateCompteHomeInformationCopyWith<$Res>  {
  factory $RequestCreateCompteHomeInformationCopyWith(RequestCreateCompteHomeInformation value, $Res Function(RequestCreateCompteHomeInformation) _then) = _$RequestCreateCompteHomeInformationCopyWithImpl;
@useResult
$Res call({
 String? name, String? specialite, String? telephone, String? telephon2, String? adresse, String? email, String? autherKey, String? roomNumber, String? averageBed, String? option, String? description, String? emage, String? formOne, String? formTwo, String? formTherd
});




}
/// @nodoc
class _$RequestCreateCompteHomeInformationCopyWithImpl<$Res>
    implements $RequestCreateCompteHomeInformationCopyWith<$Res> {
  _$RequestCreateCompteHomeInformationCopyWithImpl(this._self, this._then);

  final RequestCreateCompteHomeInformation _self;
  final $Res Function(RequestCreateCompteHomeInformation) _then;

/// Create a copy of RequestCreateCompteHomeInformation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? specialite = freezed,Object? telephone = freezed,Object? telephon2 = freezed,Object? adresse = freezed,Object? email = freezed,Object? autherKey = freezed,Object? roomNumber = freezed,Object? averageBed = freezed,Object? option = freezed,Object? description = freezed,Object? emage = freezed,Object? formOne = freezed,Object? formTwo = freezed,Object? formTherd = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,specialite: freezed == specialite ? _self.specialite : specialite // ignore: cast_nullable_to_non_nullable
as String?,telephone: freezed == telephone ? _self.telephone : telephone // ignore: cast_nullable_to_non_nullable
as String?,telephon2: freezed == telephon2 ? _self.telephon2 : telephon2 // ignore: cast_nullable_to_non_nullable
as String?,adresse: freezed == adresse ? _self.adresse : adresse // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,autherKey: freezed == autherKey ? _self.autherKey : autherKey // ignore: cast_nullable_to_non_nullable
as String?,roomNumber: freezed == roomNumber ? _self.roomNumber : roomNumber // ignore: cast_nullable_to_non_nullable
as String?,averageBed: freezed == averageBed ? _self.averageBed : averageBed // ignore: cast_nullable_to_non_nullable
as String?,option: freezed == option ? _self.option : option // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,emage: freezed == emage ? _self.emage : emage // ignore: cast_nullable_to_non_nullable
as String?,formOne: freezed == formOne ? _self.formOne : formOne // ignore: cast_nullable_to_non_nullable
as String?,formTwo: freezed == formTwo ? _self.formTwo : formTwo // ignore: cast_nullable_to_non_nullable
as String?,formTherd: freezed == formTherd ? _self.formTherd : formTherd // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RequestCreateCompteHomeInformation].
extension RequestCreateCompteHomeInformationPatterns on RequestCreateCompteHomeInformation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SRequestCreateCompteHomeInformation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SRequestCreateCompteHomeInformation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SRequestCreateCompteHomeInformation value)  $default,){
final _that = this;
switch (_that) {
case _SRequestCreateCompteHomeInformation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SRequestCreateCompteHomeInformation value)?  $default,){
final _that = this;
switch (_that) {
case _SRequestCreateCompteHomeInformation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? specialite,  String? telephone,  String? telephon2,  String? adresse,  String? email,  String? autherKey,  String? roomNumber,  String? averageBed,  String? option,  String? description,  String? emage,  String? formOne,  String? formTwo,  String? formTherd)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SRequestCreateCompteHomeInformation() when $default != null:
return $default(_that.name,_that.specialite,_that.telephone,_that.telephon2,_that.adresse,_that.email,_that.autherKey,_that.roomNumber,_that.averageBed,_that.option,_that.description,_that.emage,_that.formOne,_that.formTwo,_that.formTherd);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? specialite,  String? telephone,  String? telephon2,  String? adresse,  String? email,  String? autherKey,  String? roomNumber,  String? averageBed,  String? option,  String? description,  String? emage,  String? formOne,  String? formTwo,  String? formTherd)  $default,) {final _that = this;
switch (_that) {
case _SRequestCreateCompteHomeInformation():
return $default(_that.name,_that.specialite,_that.telephone,_that.telephon2,_that.adresse,_that.email,_that.autherKey,_that.roomNumber,_that.averageBed,_that.option,_that.description,_that.emage,_that.formOne,_that.formTwo,_that.formTherd);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? specialite,  String? telephone,  String? telephon2,  String? adresse,  String? email,  String? autherKey,  String? roomNumber,  String? averageBed,  String? option,  String? description,  String? emage,  String? formOne,  String? formTwo,  String? formTherd)?  $default,) {final _that = this;
switch (_that) {
case _SRequestCreateCompteHomeInformation() when $default != null:
return $default(_that.name,_that.specialite,_that.telephone,_that.telephon2,_that.adresse,_that.email,_that.autherKey,_that.roomNumber,_that.averageBed,_that.option,_that.description,_that.emage,_that.formOne,_that.formTwo,_that.formTherd);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SRequestCreateCompteHomeInformation implements RequestCreateCompteHomeInformation {
   _SRequestCreateCompteHomeInformation({this.name, this.specialite, this.telephone, this.telephon2, this.adresse, this.email, this.autherKey, this.roomNumber, this.averageBed, this.option, this.description, this.emage, this.formOne, this.formTwo, this.formTherd});
  factory _SRequestCreateCompteHomeInformation.fromJson(Map<String, dynamic> json) => _$SRequestCreateCompteHomeInformationFromJson(json);

@override final  String? name;
@override final  String? specialite;
@override final  String? telephone;
@override final  String? telephon2;
@override final  String? adresse;
@override final  String? email;
@override final  String? autherKey;
@override final  String? roomNumber;
@override final  String? averageBed;
@override final  String? option;
@override final  String? description;
@override final  String? emage;
@override final  String? formOne;
@override final  String? formTwo;
@override final  String? formTherd;

/// Create a copy of RequestCreateCompteHomeInformation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SRequestCreateCompteHomeInformationCopyWith<_SRequestCreateCompteHomeInformation> get copyWith => __$SRequestCreateCompteHomeInformationCopyWithImpl<_SRequestCreateCompteHomeInformation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SRequestCreateCompteHomeInformationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SRequestCreateCompteHomeInformation&&(identical(other.name, name) || other.name == name)&&(identical(other.specialite, specialite) || other.specialite == specialite)&&(identical(other.telephone, telephone) || other.telephone == telephone)&&(identical(other.telephon2, telephon2) || other.telephon2 == telephon2)&&(identical(other.adresse, adresse) || other.adresse == adresse)&&(identical(other.email, email) || other.email == email)&&(identical(other.autherKey, autherKey) || other.autherKey == autherKey)&&(identical(other.roomNumber, roomNumber) || other.roomNumber == roomNumber)&&(identical(other.averageBed, averageBed) || other.averageBed == averageBed)&&(identical(other.option, option) || other.option == option)&&(identical(other.description, description) || other.description == description)&&(identical(other.emage, emage) || other.emage == emage)&&(identical(other.formOne, formOne) || other.formOne == formOne)&&(identical(other.formTwo, formTwo) || other.formTwo == formTwo)&&(identical(other.formTherd, formTherd) || other.formTherd == formTherd));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,specialite,telephone,telephon2,adresse,email,autherKey,roomNumber,averageBed,option,description,emage,formOne,formTwo,formTherd);

@override
String toString() {
  return 'RequestCreateCompteHomeInformation(name: $name, specialite: $specialite, telephone: $telephone, telephon2: $telephon2, adresse: $adresse, email: $email, autherKey: $autherKey, roomNumber: $roomNumber, averageBed: $averageBed, option: $option, description: $description, emage: $emage, formOne: $formOne, formTwo: $formTwo, formTherd: $formTherd)';
}


}

/// @nodoc
abstract mixin class _$SRequestCreateCompteHomeInformationCopyWith<$Res> implements $RequestCreateCompteHomeInformationCopyWith<$Res> {
  factory _$SRequestCreateCompteHomeInformationCopyWith(_SRequestCreateCompteHomeInformation value, $Res Function(_SRequestCreateCompteHomeInformation) _then) = __$SRequestCreateCompteHomeInformationCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? specialite, String? telephone, String? telephon2, String? adresse, String? email, String? autherKey, String? roomNumber, String? averageBed, String? option, String? description, String? emage, String? formOne, String? formTwo, String? formTherd
});




}
/// @nodoc
class __$SRequestCreateCompteHomeInformationCopyWithImpl<$Res>
    implements _$SRequestCreateCompteHomeInformationCopyWith<$Res> {
  __$SRequestCreateCompteHomeInformationCopyWithImpl(this._self, this._then);

  final _SRequestCreateCompteHomeInformation _self;
  final $Res Function(_SRequestCreateCompteHomeInformation) _then;

/// Create a copy of RequestCreateCompteHomeInformation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? specialite = freezed,Object? telephone = freezed,Object? telephon2 = freezed,Object? adresse = freezed,Object? email = freezed,Object? autherKey = freezed,Object? roomNumber = freezed,Object? averageBed = freezed,Object? option = freezed,Object? description = freezed,Object? emage = freezed,Object? formOne = freezed,Object? formTwo = freezed,Object? formTherd = freezed,}) {
  return _then(_SRequestCreateCompteHomeInformation(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,specialite: freezed == specialite ? _self.specialite : specialite // ignore: cast_nullable_to_non_nullable
as String?,telephone: freezed == telephone ? _self.telephone : telephone // ignore: cast_nullable_to_non_nullable
as String?,telephon2: freezed == telephon2 ? _self.telephon2 : telephon2 // ignore: cast_nullable_to_non_nullable
as String?,adresse: freezed == adresse ? _self.adresse : adresse // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,autherKey: freezed == autherKey ? _self.autherKey : autherKey // ignore: cast_nullable_to_non_nullable
as String?,roomNumber: freezed == roomNumber ? _self.roomNumber : roomNumber // ignore: cast_nullable_to_non_nullable
as String?,averageBed: freezed == averageBed ? _self.averageBed : averageBed // ignore: cast_nullable_to_non_nullable
as String?,option: freezed == option ? _self.option : option // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,emage: freezed == emage ? _self.emage : emage // ignore: cast_nullable_to_non_nullable
as String?,formOne: freezed == formOne ? _self.formOne : formOne // ignore: cast_nullable_to_non_nullable
as String?,formTwo: freezed == formTwo ? _self.formTwo : formTwo // ignore: cast_nullable_to_non_nullable
as String?,formTherd: freezed == formTherd ? _self.formTherd : formTherd // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

RequestCreateCompteHeber _$RequestCreateCompteHeberFromJson(
  Map<String, dynamic> json
) {
    return _SRequestCreateCompteHeber.fromJson(
      json
    );
}

/// @nodoc
mixin _$RequestCreateCompteHeber {

 String get roomNumber; String get averageBed; String get option; String get description;
/// Create a copy of RequestCreateCompteHeber
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestCreateCompteHeberCopyWith<RequestCreateCompteHeber> get copyWith => _$RequestCreateCompteHeberCopyWithImpl<RequestCreateCompteHeber>(this as RequestCreateCompteHeber, _$identity);

  /// Serializes this RequestCreateCompteHeber to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestCreateCompteHeber&&(identical(other.roomNumber, roomNumber) || other.roomNumber == roomNumber)&&(identical(other.averageBed, averageBed) || other.averageBed == averageBed)&&(identical(other.option, option) || other.option == option)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,roomNumber,averageBed,option,description);

@override
String toString() {
  return 'RequestCreateCompteHeber(roomNumber: $roomNumber, averageBed: $averageBed, option: $option, description: $description)';
}


}

/// @nodoc
abstract mixin class $RequestCreateCompteHeberCopyWith<$Res>  {
  factory $RequestCreateCompteHeberCopyWith(RequestCreateCompteHeber value, $Res Function(RequestCreateCompteHeber) _then) = _$RequestCreateCompteHeberCopyWithImpl;
@useResult
$Res call({
 String roomNumber, String averageBed, String option, String description
});




}
/// @nodoc
class _$RequestCreateCompteHeberCopyWithImpl<$Res>
    implements $RequestCreateCompteHeberCopyWith<$Res> {
  _$RequestCreateCompteHeberCopyWithImpl(this._self, this._then);

  final RequestCreateCompteHeber _self;
  final $Res Function(RequestCreateCompteHeber) _then;

/// Create a copy of RequestCreateCompteHeber
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? roomNumber = null,Object? averageBed = null,Object? option = null,Object? description = null,}) {
  return _then(_self.copyWith(
roomNumber: null == roomNumber ? _self.roomNumber : roomNumber // ignore: cast_nullable_to_non_nullable
as String,averageBed: null == averageBed ? _self.averageBed : averageBed // ignore: cast_nullable_to_non_nullable
as String,option: null == option ? _self.option : option // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RequestCreateCompteHeber].
extension RequestCreateCompteHeberPatterns on RequestCreateCompteHeber {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SRequestCreateCompteHeber value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SRequestCreateCompteHeber() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SRequestCreateCompteHeber value)  $default,){
final _that = this;
switch (_that) {
case _SRequestCreateCompteHeber():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SRequestCreateCompteHeber value)?  $default,){
final _that = this;
switch (_that) {
case _SRequestCreateCompteHeber() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String roomNumber,  String averageBed,  String option,  String description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SRequestCreateCompteHeber() when $default != null:
return $default(_that.roomNumber,_that.averageBed,_that.option,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String roomNumber,  String averageBed,  String option,  String description)  $default,) {final _that = this;
switch (_that) {
case _SRequestCreateCompteHeber():
return $default(_that.roomNumber,_that.averageBed,_that.option,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String roomNumber,  String averageBed,  String option,  String description)?  $default,) {final _that = this;
switch (_that) {
case _SRequestCreateCompteHeber() when $default != null:
return $default(_that.roomNumber,_that.averageBed,_that.option,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SRequestCreateCompteHeber implements RequestCreateCompteHeber {
   _SRequestCreateCompteHeber({required this.roomNumber, required this.averageBed, required this.option, required this.description});
  factory _SRequestCreateCompteHeber.fromJson(Map<String, dynamic> json) => _$SRequestCreateCompteHeberFromJson(json);

@override final  String roomNumber;
@override final  String averageBed;
@override final  String option;
@override final  String description;

/// Create a copy of RequestCreateCompteHeber
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SRequestCreateCompteHeberCopyWith<_SRequestCreateCompteHeber> get copyWith => __$SRequestCreateCompteHeberCopyWithImpl<_SRequestCreateCompteHeber>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SRequestCreateCompteHeberToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SRequestCreateCompteHeber&&(identical(other.roomNumber, roomNumber) || other.roomNumber == roomNumber)&&(identical(other.averageBed, averageBed) || other.averageBed == averageBed)&&(identical(other.option, option) || other.option == option)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,roomNumber,averageBed,option,description);

@override
String toString() {
  return 'RequestCreateCompteHeber(roomNumber: $roomNumber, averageBed: $averageBed, option: $option, description: $description)';
}


}

/// @nodoc
abstract mixin class _$SRequestCreateCompteHeberCopyWith<$Res> implements $RequestCreateCompteHeberCopyWith<$Res> {
  factory _$SRequestCreateCompteHeberCopyWith(_SRequestCreateCompteHeber value, $Res Function(_SRequestCreateCompteHeber) _then) = __$SRequestCreateCompteHeberCopyWithImpl;
@override @useResult
$Res call({
 String roomNumber, String averageBed, String option, String description
});




}
/// @nodoc
class __$SRequestCreateCompteHeberCopyWithImpl<$Res>
    implements _$SRequestCreateCompteHeberCopyWith<$Res> {
  __$SRequestCreateCompteHeberCopyWithImpl(this._self, this._then);

  final _SRequestCreateCompteHeber _self;
  final $Res Function(_SRequestCreateCompteHeber) _then;

/// Create a copy of RequestCreateCompteHeber
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? roomNumber = null,Object? averageBed = null,Object? option = null,Object? description = null,}) {
  return _then(_SRequestCreateCompteHeber(
roomNumber: null == roomNumber ? _self.roomNumber : roomNumber // ignore: cast_nullable_to_non_nullable
as String,averageBed: null == averageBed ? _self.averageBed : averageBed // ignore: cast_nullable_to_non_nullable
as String,option: null == option ? _self.option : option // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
