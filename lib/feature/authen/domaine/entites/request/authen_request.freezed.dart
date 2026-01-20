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

 String get email; String get password; bool get isgoogleAuthen;
/// Create a copy of RequestAuthen
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestAuthenCopyWith<RequestAuthen> get copyWith => _$RequestAuthenCopyWithImpl<RequestAuthen>(this as RequestAuthen, _$identity);

  /// Serializes this RequestAuthen to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestAuthen&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.isgoogleAuthen, isgoogleAuthen) || other.isgoogleAuthen == isgoogleAuthen));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,password,isgoogleAuthen);

@override
String toString() {
  return 'RequestAuthen(email: $email, password: $password, isgoogleAuthen: $isgoogleAuthen)';
}


}

/// @nodoc
abstract mixin class $RequestAuthenCopyWith<$Res>  {
  factory $RequestAuthenCopyWith(RequestAuthen value, $Res Function(RequestAuthen) _then) = _$RequestAuthenCopyWithImpl;
@useResult
$Res call({
 String email, String password, bool isgoogleAuthen
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
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? password = null,Object? isgoogleAuthen = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,isgoogleAuthen: null == isgoogleAuthen ? _self.isgoogleAuthen : isgoogleAuthen // ignore: cast_nullable_to_non_nullable
as bool,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email,  String password,  bool isgoogleAuthen)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SRequestAuthen() when $default != null:
return $default(_that.email,_that.password,_that.isgoogleAuthen);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email,  String password,  bool isgoogleAuthen)  $default,) {final _that = this;
switch (_that) {
case _SRequestAuthen():
return $default(_that.email,_that.password,_that.isgoogleAuthen);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email,  String password,  bool isgoogleAuthen)?  $default,) {final _that = this;
switch (_that) {
case _SRequestAuthen() when $default != null:
return $default(_that.email,_that.password,_that.isgoogleAuthen);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SRequestAuthen implements RequestAuthen {
   _SRequestAuthen({required this.email, required this.password, required this.isgoogleAuthen});
  factory _SRequestAuthen.fromJson(Map<String, dynamic> json) => _$SRequestAuthenFromJson(json);

@override final  String email;
@override final  String password;
@override final  bool isgoogleAuthen;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SRequestAuthen&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.isgoogleAuthen, isgoogleAuthen) || other.isgoogleAuthen == isgoogleAuthen));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,password,isgoogleAuthen);

@override
String toString() {
  return 'RequestAuthen(email: $email, password: $password, isgoogleAuthen: $isgoogleAuthen)';
}


}

/// @nodoc
abstract mixin class _$SRequestAuthenCopyWith<$Res> implements $RequestAuthenCopyWith<$Res> {
  factory _$SRequestAuthenCopyWith(_SRequestAuthen value, $Res Function(_SRequestAuthen) _then) = __$SRequestAuthenCopyWithImpl;
@override @useResult
$Res call({
 String email, String password, bool isgoogleAuthen
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
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,Object? isgoogleAuthen = null,}) {
  return _then(_SRequestAuthen(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,isgoogleAuthen: null == isgoogleAuthen ? _self.isgoogleAuthen : isgoogleAuthen // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

RequestAuthenUpdateKey _$RequestAuthenUpdateKeyFromJson(
  Map<String, dynamic> json
) {
    return _SRequestAuthenUpdateKey.fromJson(
      json
    );
}

/// @nodoc
mixin _$RequestAuthenUpdateKey {

 String get userId;
/// Create a copy of RequestAuthenUpdateKey
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestAuthenUpdateKeyCopyWith<RequestAuthenUpdateKey> get copyWith => _$RequestAuthenUpdateKeyCopyWithImpl<RequestAuthenUpdateKey>(this as RequestAuthenUpdateKey, _$identity);

  /// Serializes this RequestAuthenUpdateKey to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestAuthenUpdateKey&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'RequestAuthenUpdateKey(userId: $userId)';
}


}

/// @nodoc
abstract mixin class $RequestAuthenUpdateKeyCopyWith<$Res>  {
  factory $RequestAuthenUpdateKeyCopyWith(RequestAuthenUpdateKey value, $Res Function(RequestAuthenUpdateKey) _then) = _$RequestAuthenUpdateKeyCopyWithImpl;
@useResult
$Res call({
 String userId
});




}
/// @nodoc
class _$RequestAuthenUpdateKeyCopyWithImpl<$Res>
    implements $RequestAuthenUpdateKeyCopyWith<$Res> {
  _$RequestAuthenUpdateKeyCopyWithImpl(this._self, this._then);

  final RequestAuthenUpdateKey _self;
  final $Res Function(RequestAuthenUpdateKey) _then;

/// Create a copy of RequestAuthenUpdateKey
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RequestAuthenUpdateKey].
extension RequestAuthenUpdateKeyPatterns on RequestAuthenUpdateKey {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SRequestAuthenUpdateKey value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SRequestAuthenUpdateKey() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SRequestAuthenUpdateKey value)  $default,){
final _that = this;
switch (_that) {
case _SRequestAuthenUpdateKey():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SRequestAuthenUpdateKey value)?  $default,){
final _that = this;
switch (_that) {
case _SRequestAuthenUpdateKey() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SRequestAuthenUpdateKey() when $default != null:
return $default(_that.userId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId)  $default,) {final _that = this;
switch (_that) {
case _SRequestAuthenUpdateKey():
return $default(_that.userId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId)?  $default,) {final _that = this;
switch (_that) {
case _SRequestAuthenUpdateKey() when $default != null:
return $default(_that.userId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SRequestAuthenUpdateKey implements RequestAuthenUpdateKey {
   _SRequestAuthenUpdateKey({required this.userId});
  factory _SRequestAuthenUpdateKey.fromJson(Map<String, dynamic> json) => _$SRequestAuthenUpdateKeyFromJson(json);

@override final  String userId;

/// Create a copy of RequestAuthenUpdateKey
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SRequestAuthenUpdateKeyCopyWith<_SRequestAuthenUpdateKey> get copyWith => __$SRequestAuthenUpdateKeyCopyWithImpl<_SRequestAuthenUpdateKey>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SRequestAuthenUpdateKeyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SRequestAuthenUpdateKey&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'RequestAuthenUpdateKey(userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$SRequestAuthenUpdateKeyCopyWith<$Res> implements $RequestAuthenUpdateKeyCopyWith<$Res> {
  factory _$SRequestAuthenUpdateKeyCopyWith(_SRequestAuthenUpdateKey value, $Res Function(_SRequestAuthenUpdateKey) _then) = __$SRequestAuthenUpdateKeyCopyWithImpl;
@override @useResult
$Res call({
 String userId
});




}
/// @nodoc
class __$SRequestAuthenUpdateKeyCopyWithImpl<$Res>
    implements _$SRequestAuthenUpdateKeyCopyWith<$Res> {
  __$SRequestAuthenUpdateKeyCopyWithImpl(this._self, this._then);

  final _SRequestAuthenUpdateKey _self;
  final $Res Function(_SRequestAuthenUpdateKey) _then;

/// Create a copy of RequestAuthenUpdateKey
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(_SRequestAuthenUpdateKey(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
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

 String? get name; String? get specialite; String? get telephone; String? get whatsappContact; String? get adresse; String? get email; String? get facebookLinck; String? get long; String? get lat; String? get autherKey; String? get roomNumber; String? get averageBed; String? get option; String? get description; String? get emage; String? get formOne; String? get formTwo; String? get formTherd;
/// Create a copy of RequestCreateCompteHomeInformation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestCreateCompteHomeInformationCopyWith<RequestCreateCompteHomeInformation> get copyWith => _$RequestCreateCompteHomeInformationCopyWithImpl<RequestCreateCompteHomeInformation>(this as RequestCreateCompteHomeInformation, _$identity);

  /// Serializes this RequestCreateCompteHomeInformation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestCreateCompteHomeInformation&&(identical(other.name, name) || other.name == name)&&(identical(other.specialite, specialite) || other.specialite == specialite)&&(identical(other.telephone, telephone) || other.telephone == telephone)&&(identical(other.whatsappContact, whatsappContact) || other.whatsappContact == whatsappContact)&&(identical(other.adresse, adresse) || other.adresse == adresse)&&(identical(other.email, email) || other.email == email)&&(identical(other.facebookLinck, facebookLinck) || other.facebookLinck == facebookLinck)&&(identical(other.long, long) || other.long == long)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.autherKey, autherKey) || other.autherKey == autherKey)&&(identical(other.roomNumber, roomNumber) || other.roomNumber == roomNumber)&&(identical(other.averageBed, averageBed) || other.averageBed == averageBed)&&(identical(other.option, option) || other.option == option)&&(identical(other.description, description) || other.description == description)&&(identical(other.emage, emage) || other.emage == emage)&&(identical(other.formOne, formOne) || other.formOne == formOne)&&(identical(other.formTwo, formTwo) || other.formTwo == formTwo)&&(identical(other.formTherd, formTherd) || other.formTherd == formTherd));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,specialite,telephone,whatsappContact,adresse,email,facebookLinck,long,lat,autherKey,roomNumber,averageBed,option,description,emage,formOne,formTwo,formTherd);

@override
String toString() {
  return 'RequestCreateCompteHomeInformation(name: $name, specialite: $specialite, telephone: $telephone, whatsappContact: $whatsappContact, adresse: $adresse, email: $email, facebookLinck: $facebookLinck, long: $long, lat: $lat, autherKey: $autherKey, roomNumber: $roomNumber, averageBed: $averageBed, option: $option, description: $description, emage: $emage, formOne: $formOne, formTwo: $formTwo, formTherd: $formTherd)';
}


}

/// @nodoc
abstract mixin class $RequestCreateCompteHomeInformationCopyWith<$Res>  {
  factory $RequestCreateCompteHomeInformationCopyWith(RequestCreateCompteHomeInformation value, $Res Function(RequestCreateCompteHomeInformation) _then) = _$RequestCreateCompteHomeInformationCopyWithImpl;
@useResult
$Res call({
 String? name, String? specialite, String? telephone, String? whatsappContact, String? adresse, String? email, String? facebookLinck, String? long, String? lat, String? autherKey, String? roomNumber, String? averageBed, String? option, String? description, String? emage, String? formOne, String? formTwo, String? formTherd
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
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? specialite = freezed,Object? telephone = freezed,Object? whatsappContact = freezed,Object? adresse = freezed,Object? email = freezed,Object? facebookLinck = freezed,Object? long = freezed,Object? lat = freezed,Object? autherKey = freezed,Object? roomNumber = freezed,Object? averageBed = freezed,Object? option = freezed,Object? description = freezed,Object? emage = freezed,Object? formOne = freezed,Object? formTwo = freezed,Object? formTherd = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,specialite: freezed == specialite ? _self.specialite : specialite // ignore: cast_nullable_to_non_nullable
as String?,telephone: freezed == telephone ? _self.telephone : telephone // ignore: cast_nullable_to_non_nullable
as String?,whatsappContact: freezed == whatsappContact ? _self.whatsappContact : whatsappContact // ignore: cast_nullable_to_non_nullable
as String?,adresse: freezed == adresse ? _self.adresse : adresse // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,facebookLinck: freezed == facebookLinck ? _self.facebookLinck : facebookLinck // ignore: cast_nullable_to_non_nullable
as String?,long: freezed == long ? _self.long : long // ignore: cast_nullable_to_non_nullable
as String?,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? specialite,  String? telephone,  String? whatsappContact,  String? adresse,  String? email,  String? facebookLinck,  String? long,  String? lat,  String? autherKey,  String? roomNumber,  String? averageBed,  String? option,  String? description,  String? emage,  String? formOne,  String? formTwo,  String? formTherd)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SRequestCreateCompteHomeInformation() when $default != null:
return $default(_that.name,_that.specialite,_that.telephone,_that.whatsappContact,_that.adresse,_that.email,_that.facebookLinck,_that.long,_that.lat,_that.autherKey,_that.roomNumber,_that.averageBed,_that.option,_that.description,_that.emage,_that.formOne,_that.formTwo,_that.formTherd);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? specialite,  String? telephone,  String? whatsappContact,  String? adresse,  String? email,  String? facebookLinck,  String? long,  String? lat,  String? autherKey,  String? roomNumber,  String? averageBed,  String? option,  String? description,  String? emage,  String? formOne,  String? formTwo,  String? formTherd)  $default,) {final _that = this;
switch (_that) {
case _SRequestCreateCompteHomeInformation():
return $default(_that.name,_that.specialite,_that.telephone,_that.whatsappContact,_that.adresse,_that.email,_that.facebookLinck,_that.long,_that.lat,_that.autherKey,_that.roomNumber,_that.averageBed,_that.option,_that.description,_that.emage,_that.formOne,_that.formTwo,_that.formTherd);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? specialite,  String? telephone,  String? whatsappContact,  String? adresse,  String? email,  String? facebookLinck,  String? long,  String? lat,  String? autherKey,  String? roomNumber,  String? averageBed,  String? option,  String? description,  String? emage,  String? formOne,  String? formTwo,  String? formTherd)?  $default,) {final _that = this;
switch (_that) {
case _SRequestCreateCompteHomeInformation() when $default != null:
return $default(_that.name,_that.specialite,_that.telephone,_that.whatsappContact,_that.adresse,_that.email,_that.facebookLinck,_that.long,_that.lat,_that.autherKey,_that.roomNumber,_that.averageBed,_that.option,_that.description,_that.emage,_that.formOne,_that.formTwo,_that.formTherd);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SRequestCreateCompteHomeInformation implements RequestCreateCompteHomeInformation {
   _SRequestCreateCompteHomeInformation({this.name, this.specialite, this.telephone, this.whatsappContact, this.adresse, this.email, this.facebookLinck, this.long, this.lat, this.autherKey, this.roomNumber, this.averageBed, this.option, this.description, this.emage, this.formOne, this.formTwo, this.formTherd});
  factory _SRequestCreateCompteHomeInformation.fromJson(Map<String, dynamic> json) => _$SRequestCreateCompteHomeInformationFromJson(json);

@override final  String? name;
@override final  String? specialite;
@override final  String? telephone;
@override final  String? whatsappContact;
@override final  String? adresse;
@override final  String? email;
@override final  String? facebookLinck;
@override final  String? long;
@override final  String? lat;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SRequestCreateCompteHomeInformation&&(identical(other.name, name) || other.name == name)&&(identical(other.specialite, specialite) || other.specialite == specialite)&&(identical(other.telephone, telephone) || other.telephone == telephone)&&(identical(other.whatsappContact, whatsappContact) || other.whatsappContact == whatsappContact)&&(identical(other.adresse, adresse) || other.adresse == adresse)&&(identical(other.email, email) || other.email == email)&&(identical(other.facebookLinck, facebookLinck) || other.facebookLinck == facebookLinck)&&(identical(other.long, long) || other.long == long)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.autherKey, autherKey) || other.autherKey == autherKey)&&(identical(other.roomNumber, roomNumber) || other.roomNumber == roomNumber)&&(identical(other.averageBed, averageBed) || other.averageBed == averageBed)&&(identical(other.option, option) || other.option == option)&&(identical(other.description, description) || other.description == description)&&(identical(other.emage, emage) || other.emage == emage)&&(identical(other.formOne, formOne) || other.formOne == formOne)&&(identical(other.formTwo, formTwo) || other.formTwo == formTwo)&&(identical(other.formTherd, formTherd) || other.formTherd == formTherd));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,specialite,telephone,whatsappContact,adresse,email,facebookLinck,long,lat,autherKey,roomNumber,averageBed,option,description,emage,formOne,formTwo,formTherd);

@override
String toString() {
  return 'RequestCreateCompteHomeInformation(name: $name, specialite: $specialite, telephone: $telephone, whatsappContact: $whatsappContact, adresse: $adresse, email: $email, facebookLinck: $facebookLinck, long: $long, lat: $lat, autherKey: $autherKey, roomNumber: $roomNumber, averageBed: $averageBed, option: $option, description: $description, emage: $emage, formOne: $formOne, formTwo: $formTwo, formTherd: $formTherd)';
}


}

/// @nodoc
abstract mixin class _$SRequestCreateCompteHomeInformationCopyWith<$Res> implements $RequestCreateCompteHomeInformationCopyWith<$Res> {
  factory _$SRequestCreateCompteHomeInformationCopyWith(_SRequestCreateCompteHomeInformation value, $Res Function(_SRequestCreateCompteHomeInformation) _then) = __$SRequestCreateCompteHomeInformationCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? specialite, String? telephone, String? whatsappContact, String? adresse, String? email, String? facebookLinck, String? long, String? lat, String? autherKey, String? roomNumber, String? averageBed, String? option, String? description, String? emage, String? formOne, String? formTwo, String? formTherd
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
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? specialite = freezed,Object? telephone = freezed,Object? whatsappContact = freezed,Object? adresse = freezed,Object? email = freezed,Object? facebookLinck = freezed,Object? long = freezed,Object? lat = freezed,Object? autherKey = freezed,Object? roomNumber = freezed,Object? averageBed = freezed,Object? option = freezed,Object? description = freezed,Object? emage = freezed,Object? formOne = freezed,Object? formTwo = freezed,Object? formTherd = freezed,}) {
  return _then(_SRequestCreateCompteHomeInformation(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,specialite: freezed == specialite ? _self.specialite : specialite // ignore: cast_nullable_to_non_nullable
as String?,telephone: freezed == telephone ? _self.telephone : telephone // ignore: cast_nullable_to_non_nullable
as String?,whatsappContact: freezed == whatsappContact ? _self.whatsappContact : whatsappContact // ignore: cast_nullable_to_non_nullable
as String?,adresse: freezed == adresse ? _self.adresse : adresse // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,facebookLinck: freezed == facebookLinck ? _self.facebookLinck : facebookLinck // ignore: cast_nullable_to_non_nullable
as String?,long: freezed == long ? _self.long : long // ignore: cast_nullable_to_non_nullable
as String?,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
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

 String get roomNumber; String get averageBed; String get option; String get description; String get formTwo;
/// Create a copy of RequestCreateCompteHeber
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestCreateCompteHeberCopyWith<RequestCreateCompteHeber> get copyWith => _$RequestCreateCompteHeberCopyWithImpl<RequestCreateCompteHeber>(this as RequestCreateCompteHeber, _$identity);

  /// Serializes this RequestCreateCompteHeber to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestCreateCompteHeber&&(identical(other.roomNumber, roomNumber) || other.roomNumber == roomNumber)&&(identical(other.averageBed, averageBed) || other.averageBed == averageBed)&&(identical(other.option, option) || other.option == option)&&(identical(other.description, description) || other.description == description)&&(identical(other.formTwo, formTwo) || other.formTwo == formTwo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,roomNumber,averageBed,option,description,formTwo);

@override
String toString() {
  return 'RequestCreateCompteHeber(roomNumber: $roomNumber, averageBed: $averageBed, option: $option, description: $description, formTwo: $formTwo)';
}


}

/// @nodoc
abstract mixin class $RequestCreateCompteHeberCopyWith<$Res>  {
  factory $RequestCreateCompteHeberCopyWith(RequestCreateCompteHeber value, $Res Function(RequestCreateCompteHeber) _then) = _$RequestCreateCompteHeberCopyWithImpl;
@useResult
$Res call({
 String roomNumber, String averageBed, String option, String description, String formTwo
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
@pragma('vm:prefer-inline') @override $Res call({Object? roomNumber = null,Object? averageBed = null,Object? option = null,Object? description = null,Object? formTwo = null,}) {
  return _then(_self.copyWith(
roomNumber: null == roomNumber ? _self.roomNumber : roomNumber // ignore: cast_nullable_to_non_nullable
as String,averageBed: null == averageBed ? _self.averageBed : averageBed // ignore: cast_nullable_to_non_nullable
as String,option: null == option ? _self.option : option // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,formTwo: null == formTwo ? _self.formTwo : formTwo // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String roomNumber,  String averageBed,  String option,  String description,  String formTwo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SRequestCreateCompteHeber() when $default != null:
return $default(_that.roomNumber,_that.averageBed,_that.option,_that.description,_that.formTwo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String roomNumber,  String averageBed,  String option,  String description,  String formTwo)  $default,) {final _that = this;
switch (_that) {
case _SRequestCreateCompteHeber():
return $default(_that.roomNumber,_that.averageBed,_that.option,_that.description,_that.formTwo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String roomNumber,  String averageBed,  String option,  String description,  String formTwo)?  $default,) {final _that = this;
switch (_that) {
case _SRequestCreateCompteHeber() when $default != null:
return $default(_that.roomNumber,_that.averageBed,_that.option,_that.description,_that.formTwo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SRequestCreateCompteHeber implements RequestCreateCompteHeber {
   _SRequestCreateCompteHeber({required this.roomNumber, required this.averageBed, required this.option, required this.description, required this.formTwo});
  factory _SRequestCreateCompteHeber.fromJson(Map<String, dynamic> json) => _$SRequestCreateCompteHeberFromJson(json);

@override final  String roomNumber;
@override final  String averageBed;
@override final  String option;
@override final  String description;
@override final  String formTwo;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SRequestCreateCompteHeber&&(identical(other.roomNumber, roomNumber) || other.roomNumber == roomNumber)&&(identical(other.averageBed, averageBed) || other.averageBed == averageBed)&&(identical(other.option, option) || other.option == option)&&(identical(other.description, description) || other.description == description)&&(identical(other.formTwo, formTwo) || other.formTwo == formTwo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,roomNumber,averageBed,option,description,formTwo);

@override
String toString() {
  return 'RequestCreateCompteHeber(roomNumber: $roomNumber, averageBed: $averageBed, option: $option, description: $description, formTwo: $formTwo)';
}


}

/// @nodoc
abstract mixin class _$SRequestCreateCompteHeberCopyWith<$Res> implements $RequestCreateCompteHeberCopyWith<$Res> {
  factory _$SRequestCreateCompteHeberCopyWith(_SRequestCreateCompteHeber value, $Res Function(_SRequestCreateCompteHeber) _then) = __$SRequestCreateCompteHeberCopyWithImpl;
@override @useResult
$Res call({
 String roomNumber, String averageBed, String option, String description, String formTwo
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
@override @pragma('vm:prefer-inline') $Res call({Object? roomNumber = null,Object? averageBed = null,Object? option = null,Object? description = null,Object? formTwo = null,}) {
  return _then(_SRequestCreateCompteHeber(
roomNumber: null == roomNumber ? _self.roomNumber : roomNumber // ignore: cast_nullable_to_non_nullable
as String,averageBed: null == averageBed ? _self.averageBed : averageBed // ignore: cast_nullable_to_non_nullable
as String,option: null == option ? _self.option : option // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,formTwo: null == formTwo ? _self.formTwo : formTwo // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$Coordonne {

 String get lat; String get lon; String get display_name; Address? get address;//boundingbox
 double? get heading;//boundingbox
 LatLng? get lastLatLng;
/// Create a copy of Coordonne
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoordonneCopyWith<Coordonne> get copyWith => _$CoordonneCopyWithImpl<Coordonne>(this as Coordonne, _$identity);

  /// Serializes this Coordonne to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Coordonne&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lon, lon) || other.lon == lon)&&(identical(other.display_name, display_name) || other.display_name == display_name)&&(identical(other.address, address) || other.address == address)&&(identical(other.heading, heading) || other.heading == heading)&&(identical(other.lastLatLng, lastLatLng) || other.lastLatLng == lastLatLng));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lat,lon,display_name,address,heading,lastLatLng);

@override
String toString() {
  return 'Coordonne(lat: $lat, lon: $lon, display_name: $display_name, address: $address, heading: $heading, lastLatLng: $lastLatLng)';
}


}

/// @nodoc
abstract mixin class $CoordonneCopyWith<$Res>  {
  factory $CoordonneCopyWith(Coordonne value, $Res Function(Coordonne) _then) = _$CoordonneCopyWithImpl;
@useResult
$Res call({
 String lat, String lon, String display_name, Address? address, double? heading, LatLng? lastLatLng
});


$AddressCopyWith<$Res>? get address;

}
/// @nodoc
class _$CoordonneCopyWithImpl<$Res>
    implements $CoordonneCopyWith<$Res> {
  _$CoordonneCopyWithImpl(this._self, this._then);

  final Coordonne _self;
  final $Res Function(Coordonne) _then;

/// Create a copy of Coordonne
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lat = null,Object? lon = null,Object? display_name = null,Object? address = freezed,Object? heading = freezed,Object? lastLatLng = freezed,}) {
  return _then(_self.copyWith(
lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as String,lon: null == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as String,display_name: null == display_name ? _self.display_name : display_name // ignore: cast_nullable_to_non_nullable
as String,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as Address?,heading: freezed == heading ? _self.heading : heading // ignore: cast_nullable_to_non_nullable
as double?,lastLatLng: freezed == lastLatLng ? _self.lastLatLng : lastLatLng // ignore: cast_nullable_to_non_nullable
as LatLng?,
  ));
}
/// Create a copy of Coordonne
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res>? get address {
    if (_self.address == null) {
    return null;
  }

  return $AddressCopyWith<$Res>(_self.address!, (value) {
    return _then(_self.copyWith(address: value));
  });
}
}


/// Adds pattern-matching-related methods to [Coordonne].
extension CoordonnePatterns on Coordonne {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Coordonne value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Coordonne() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Coordonne value)  $default,){
final _that = this;
switch (_that) {
case _Coordonne():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Coordonne value)?  $default,){
final _that = this;
switch (_that) {
case _Coordonne() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String lat,  String lon,  String display_name,  Address? address,  double? heading,  LatLng? lastLatLng)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Coordonne() when $default != null:
return $default(_that.lat,_that.lon,_that.display_name,_that.address,_that.heading,_that.lastLatLng);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String lat,  String lon,  String display_name,  Address? address,  double? heading,  LatLng? lastLatLng)  $default,) {final _that = this;
switch (_that) {
case _Coordonne():
return $default(_that.lat,_that.lon,_that.display_name,_that.address,_that.heading,_that.lastLatLng);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String lat,  String lon,  String display_name,  Address? address,  double? heading,  LatLng? lastLatLng)?  $default,) {final _that = this;
switch (_that) {
case _Coordonne() when $default != null:
return $default(_that.lat,_that.lon,_that.display_name,_that.address,_that.heading,_that.lastLatLng);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Coordonne implements Coordonne {
   _Coordonne({required this.lat, required this.lon, required this.display_name, required this.address, this.heading, this.lastLatLng});
  factory _Coordonne.fromJson(Map<String, dynamic> json) => _$CoordonneFromJson(json);

@override final  String lat;
@override final  String lon;
@override final  String display_name;
@override final  Address? address;
//boundingbox
@override final  double? heading;
//boundingbox
@override final  LatLng? lastLatLng;

/// Create a copy of Coordonne
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CoordonneCopyWith<_Coordonne> get copyWith => __$CoordonneCopyWithImpl<_Coordonne>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CoordonneToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Coordonne&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lon, lon) || other.lon == lon)&&(identical(other.display_name, display_name) || other.display_name == display_name)&&(identical(other.address, address) || other.address == address)&&(identical(other.heading, heading) || other.heading == heading)&&(identical(other.lastLatLng, lastLatLng) || other.lastLatLng == lastLatLng));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lat,lon,display_name,address,heading,lastLatLng);

@override
String toString() {
  return 'Coordonne(lat: $lat, lon: $lon, display_name: $display_name, address: $address, heading: $heading, lastLatLng: $lastLatLng)';
}


}

/// @nodoc
abstract mixin class _$CoordonneCopyWith<$Res> implements $CoordonneCopyWith<$Res> {
  factory _$CoordonneCopyWith(_Coordonne value, $Res Function(_Coordonne) _then) = __$CoordonneCopyWithImpl;
@override @useResult
$Res call({
 String lat, String lon, String display_name, Address? address, double? heading, LatLng? lastLatLng
});


@override $AddressCopyWith<$Res>? get address;

}
/// @nodoc
class __$CoordonneCopyWithImpl<$Res>
    implements _$CoordonneCopyWith<$Res> {
  __$CoordonneCopyWithImpl(this._self, this._then);

  final _Coordonne _self;
  final $Res Function(_Coordonne) _then;

/// Create a copy of Coordonne
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lat = null,Object? lon = null,Object? display_name = null,Object? address = freezed,Object? heading = freezed,Object? lastLatLng = freezed,}) {
  return _then(_Coordonne(
lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as String,lon: null == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as String,display_name: null == display_name ? _self.display_name : display_name // ignore: cast_nullable_to_non_nullable
as String,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as Address?,heading: freezed == heading ? _self.heading : heading // ignore: cast_nullable_to_non_nullable
as double?,lastLatLng: freezed == lastLatLng ? _self.lastLatLng : lastLatLng // ignore: cast_nullable_to_non_nullable
as LatLng?,
  ));
}

/// Create a copy of Coordonne
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res>? get address {
    if (_self.address == null) {
    return null;
  }

  return $AddressCopyWith<$Res>(_self.address!, (value) {
    return _then(_self.copyWith(address: value));
  });
}
}


/// @nodoc
mixin _$GeoLocatedCoordonne {

 List<GeoLocatedAdresse> get adresse_search; List<GeoLocatedAdresse> get adresse_recentes; GeoLocatedAdresse? get adresse_new; GeoLocatedAdresse? get current_position; String get latitude; String get longitude; String get adresse; double get rayon; double? get heading; LatLng? get lastLatLng;
/// Create a copy of GeoLocatedCoordonne
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeoLocatedCoordonneCopyWith<GeoLocatedCoordonne> get copyWith => _$GeoLocatedCoordonneCopyWithImpl<GeoLocatedCoordonne>(this as GeoLocatedCoordonne, _$identity);

  /// Serializes this GeoLocatedCoordonne to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GeoLocatedCoordonne&&const DeepCollectionEquality().equals(other.adresse_search, adresse_search)&&const DeepCollectionEquality().equals(other.adresse_recentes, adresse_recentes)&&(identical(other.adresse_new, adresse_new) || other.adresse_new == adresse_new)&&(identical(other.current_position, current_position) || other.current_position == current_position)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.adresse, adresse) || other.adresse == adresse)&&(identical(other.rayon, rayon) || other.rayon == rayon)&&(identical(other.heading, heading) || other.heading == heading)&&(identical(other.lastLatLng, lastLatLng) || other.lastLatLng == lastLatLng));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(adresse_search),const DeepCollectionEquality().hash(adresse_recentes),adresse_new,current_position,latitude,longitude,adresse,rayon,heading,lastLatLng);

@override
String toString() {
  return 'GeoLocatedCoordonne(adresse_search: $adresse_search, adresse_recentes: $adresse_recentes, adresse_new: $adresse_new, current_position: $current_position, latitude: $latitude, longitude: $longitude, adresse: $adresse, rayon: $rayon, heading: $heading, lastLatLng: $lastLatLng)';
}


}

/// @nodoc
abstract mixin class $GeoLocatedCoordonneCopyWith<$Res>  {
  factory $GeoLocatedCoordonneCopyWith(GeoLocatedCoordonne value, $Res Function(GeoLocatedCoordonne) _then) = _$GeoLocatedCoordonneCopyWithImpl;
@useResult
$Res call({
 List<GeoLocatedAdresse> adresse_search, List<GeoLocatedAdresse> adresse_recentes, GeoLocatedAdresse? adresse_new, GeoLocatedAdresse? current_position, String latitude, String longitude, String adresse, double rayon, double? heading, LatLng? lastLatLng
});


$GeoLocatedAdresseCopyWith<$Res>? get adresse_new;$GeoLocatedAdresseCopyWith<$Res>? get current_position;

}
/// @nodoc
class _$GeoLocatedCoordonneCopyWithImpl<$Res>
    implements $GeoLocatedCoordonneCopyWith<$Res> {
  _$GeoLocatedCoordonneCopyWithImpl(this._self, this._then);

  final GeoLocatedCoordonne _self;
  final $Res Function(GeoLocatedCoordonne) _then;

/// Create a copy of GeoLocatedCoordonne
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? adresse_search = null,Object? adresse_recentes = null,Object? adresse_new = freezed,Object? current_position = freezed,Object? latitude = null,Object? longitude = null,Object? adresse = null,Object? rayon = null,Object? heading = freezed,Object? lastLatLng = freezed,}) {
  return _then(_self.copyWith(
adresse_search: null == adresse_search ? _self.adresse_search : adresse_search // ignore: cast_nullable_to_non_nullable
as List<GeoLocatedAdresse>,adresse_recentes: null == adresse_recentes ? _self.adresse_recentes : adresse_recentes // ignore: cast_nullable_to_non_nullable
as List<GeoLocatedAdresse>,adresse_new: freezed == adresse_new ? _self.adresse_new : adresse_new // ignore: cast_nullable_to_non_nullable
as GeoLocatedAdresse?,current_position: freezed == current_position ? _self.current_position : current_position // ignore: cast_nullable_to_non_nullable
as GeoLocatedAdresse?,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String,adresse: null == adresse ? _self.adresse : adresse // ignore: cast_nullable_to_non_nullable
as String,rayon: null == rayon ? _self.rayon : rayon // ignore: cast_nullable_to_non_nullable
as double,heading: freezed == heading ? _self.heading : heading // ignore: cast_nullable_to_non_nullable
as double?,lastLatLng: freezed == lastLatLng ? _self.lastLatLng : lastLatLng // ignore: cast_nullable_to_non_nullable
as LatLng?,
  ));
}
/// Create a copy of GeoLocatedCoordonne
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeoLocatedAdresseCopyWith<$Res>? get adresse_new {
    if (_self.adresse_new == null) {
    return null;
  }

  return $GeoLocatedAdresseCopyWith<$Res>(_self.adresse_new!, (value) {
    return _then(_self.copyWith(adresse_new: value));
  });
}/// Create a copy of GeoLocatedCoordonne
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeoLocatedAdresseCopyWith<$Res>? get current_position {
    if (_self.current_position == null) {
    return null;
  }

  return $GeoLocatedAdresseCopyWith<$Res>(_self.current_position!, (value) {
    return _then(_self.copyWith(current_position: value));
  });
}
}


/// Adds pattern-matching-related methods to [GeoLocatedCoordonne].
extension GeoLocatedCoordonnePatterns on GeoLocatedCoordonne {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GeoLocatedCoordonne value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GeoLocatedCoordonne() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GeoLocatedCoordonne value)  $default,){
final _that = this;
switch (_that) {
case _GeoLocatedCoordonne():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GeoLocatedCoordonne value)?  $default,){
final _that = this;
switch (_that) {
case _GeoLocatedCoordonne() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<GeoLocatedAdresse> adresse_search,  List<GeoLocatedAdresse> adresse_recentes,  GeoLocatedAdresse? adresse_new,  GeoLocatedAdresse? current_position,  String latitude,  String longitude,  String adresse,  double rayon,  double? heading,  LatLng? lastLatLng)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GeoLocatedCoordonne() when $default != null:
return $default(_that.adresse_search,_that.adresse_recentes,_that.adresse_new,_that.current_position,_that.latitude,_that.longitude,_that.adresse,_that.rayon,_that.heading,_that.lastLatLng);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<GeoLocatedAdresse> adresse_search,  List<GeoLocatedAdresse> adresse_recentes,  GeoLocatedAdresse? adresse_new,  GeoLocatedAdresse? current_position,  String latitude,  String longitude,  String adresse,  double rayon,  double? heading,  LatLng? lastLatLng)  $default,) {final _that = this;
switch (_that) {
case _GeoLocatedCoordonne():
return $default(_that.adresse_search,_that.adresse_recentes,_that.adresse_new,_that.current_position,_that.latitude,_that.longitude,_that.adresse,_that.rayon,_that.heading,_that.lastLatLng);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<GeoLocatedAdresse> adresse_search,  List<GeoLocatedAdresse> adresse_recentes,  GeoLocatedAdresse? adresse_new,  GeoLocatedAdresse? current_position,  String latitude,  String longitude,  String adresse,  double rayon,  double? heading,  LatLng? lastLatLng)?  $default,) {final _that = this;
switch (_that) {
case _GeoLocatedCoordonne() when $default != null:
return $default(_that.adresse_search,_that.adresse_recentes,_that.adresse_new,_that.current_position,_that.latitude,_that.longitude,_that.adresse,_that.rayon,_that.heading,_that.lastLatLng);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GeoLocatedCoordonne implements GeoLocatedCoordonne {
   _GeoLocatedCoordonne({required final  List<GeoLocatedAdresse> adresse_search, required final  List<GeoLocatedAdresse> adresse_recentes, this.adresse_new, this.current_position, required this.latitude, required this.longitude, required this.adresse, required this.rayon, this.heading, this.lastLatLng}): _adresse_search = adresse_search,_adresse_recentes = adresse_recentes;
  factory _GeoLocatedCoordonne.fromJson(Map<String, dynamic> json) => _$GeoLocatedCoordonneFromJson(json);

 final  List<GeoLocatedAdresse> _adresse_search;
@override List<GeoLocatedAdresse> get adresse_search {
  if (_adresse_search is EqualUnmodifiableListView) return _adresse_search;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_adresse_search);
}

 final  List<GeoLocatedAdresse> _adresse_recentes;
@override List<GeoLocatedAdresse> get adresse_recentes {
  if (_adresse_recentes is EqualUnmodifiableListView) return _adresse_recentes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_adresse_recentes);
}

@override final  GeoLocatedAdresse? adresse_new;
@override final  GeoLocatedAdresse? current_position;
@override final  String latitude;
@override final  String longitude;
@override final  String adresse;
@override final  double rayon;
@override final  double? heading;
@override final  LatLng? lastLatLng;

/// Create a copy of GeoLocatedCoordonne
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GeoLocatedCoordonneCopyWith<_GeoLocatedCoordonne> get copyWith => __$GeoLocatedCoordonneCopyWithImpl<_GeoLocatedCoordonne>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GeoLocatedCoordonneToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GeoLocatedCoordonne&&const DeepCollectionEquality().equals(other._adresse_search, _adresse_search)&&const DeepCollectionEquality().equals(other._adresse_recentes, _adresse_recentes)&&(identical(other.adresse_new, adresse_new) || other.adresse_new == adresse_new)&&(identical(other.current_position, current_position) || other.current_position == current_position)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.adresse, adresse) || other.adresse == adresse)&&(identical(other.rayon, rayon) || other.rayon == rayon)&&(identical(other.heading, heading) || other.heading == heading)&&(identical(other.lastLatLng, lastLatLng) || other.lastLatLng == lastLatLng));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_adresse_search),const DeepCollectionEquality().hash(_adresse_recentes),adresse_new,current_position,latitude,longitude,adresse,rayon,heading,lastLatLng);

@override
String toString() {
  return 'GeoLocatedCoordonne(adresse_search: $adresse_search, adresse_recentes: $adresse_recentes, adresse_new: $adresse_new, current_position: $current_position, latitude: $latitude, longitude: $longitude, adresse: $adresse, rayon: $rayon, heading: $heading, lastLatLng: $lastLatLng)';
}


}

/// @nodoc
abstract mixin class _$GeoLocatedCoordonneCopyWith<$Res> implements $GeoLocatedCoordonneCopyWith<$Res> {
  factory _$GeoLocatedCoordonneCopyWith(_GeoLocatedCoordonne value, $Res Function(_GeoLocatedCoordonne) _then) = __$GeoLocatedCoordonneCopyWithImpl;
@override @useResult
$Res call({
 List<GeoLocatedAdresse> adresse_search, List<GeoLocatedAdresse> adresse_recentes, GeoLocatedAdresse? adresse_new, GeoLocatedAdresse? current_position, String latitude, String longitude, String adresse, double rayon, double? heading, LatLng? lastLatLng
});


@override $GeoLocatedAdresseCopyWith<$Res>? get adresse_new;@override $GeoLocatedAdresseCopyWith<$Res>? get current_position;

}
/// @nodoc
class __$GeoLocatedCoordonneCopyWithImpl<$Res>
    implements _$GeoLocatedCoordonneCopyWith<$Res> {
  __$GeoLocatedCoordonneCopyWithImpl(this._self, this._then);

  final _GeoLocatedCoordonne _self;
  final $Res Function(_GeoLocatedCoordonne) _then;

/// Create a copy of GeoLocatedCoordonne
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? adresse_search = null,Object? adresse_recentes = null,Object? adresse_new = freezed,Object? current_position = freezed,Object? latitude = null,Object? longitude = null,Object? adresse = null,Object? rayon = null,Object? heading = freezed,Object? lastLatLng = freezed,}) {
  return _then(_GeoLocatedCoordonne(
adresse_search: null == adresse_search ? _self._adresse_search : adresse_search // ignore: cast_nullable_to_non_nullable
as List<GeoLocatedAdresse>,adresse_recentes: null == adresse_recentes ? _self._adresse_recentes : adresse_recentes // ignore: cast_nullable_to_non_nullable
as List<GeoLocatedAdresse>,adresse_new: freezed == adresse_new ? _self.adresse_new : adresse_new // ignore: cast_nullable_to_non_nullable
as GeoLocatedAdresse?,current_position: freezed == current_position ? _self.current_position : current_position // ignore: cast_nullable_to_non_nullable
as GeoLocatedAdresse?,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String,adresse: null == adresse ? _self.adresse : adresse // ignore: cast_nullable_to_non_nullable
as String,rayon: null == rayon ? _self.rayon : rayon // ignore: cast_nullable_to_non_nullable
as double,heading: freezed == heading ? _self.heading : heading // ignore: cast_nullable_to_non_nullable
as double?,lastLatLng: freezed == lastLatLng ? _self.lastLatLng : lastLatLng // ignore: cast_nullable_to_non_nullable
as LatLng?,
  ));
}

/// Create a copy of GeoLocatedCoordonne
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeoLocatedAdresseCopyWith<$Res>? get adresse_new {
    if (_self.adresse_new == null) {
    return null;
  }

  return $GeoLocatedAdresseCopyWith<$Res>(_self.adresse_new!, (value) {
    return _then(_self.copyWith(adresse_new: value));
  });
}/// Create a copy of GeoLocatedCoordonne
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeoLocatedAdresseCopyWith<$Res>? get current_position {
    if (_self.current_position == null) {
    return null;
  }

  return $GeoLocatedAdresseCopyWith<$Res>(_self.current_position!, (value) {
    return _then(_self.copyWith(current_position: value));
  });
}
}


/// @nodoc
mixin _$GeoLocatedAdresse {

 String get latitude; String get longitude; String get adresse; double get rayon; double? get heading; LatLng? get lastLatLng;
/// Create a copy of GeoLocatedAdresse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeoLocatedAdresseCopyWith<GeoLocatedAdresse> get copyWith => _$GeoLocatedAdresseCopyWithImpl<GeoLocatedAdresse>(this as GeoLocatedAdresse, _$identity);

  /// Serializes this GeoLocatedAdresse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GeoLocatedAdresse&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.adresse, adresse) || other.adresse == adresse)&&(identical(other.rayon, rayon) || other.rayon == rayon)&&(identical(other.heading, heading) || other.heading == heading)&&(identical(other.lastLatLng, lastLatLng) || other.lastLatLng == lastLatLng));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latitude,longitude,adresse,rayon,heading,lastLatLng);

@override
String toString() {
  return 'GeoLocatedAdresse(latitude: $latitude, longitude: $longitude, adresse: $adresse, rayon: $rayon, heading: $heading, lastLatLng: $lastLatLng)';
}


}

/// @nodoc
abstract mixin class $GeoLocatedAdresseCopyWith<$Res>  {
  factory $GeoLocatedAdresseCopyWith(GeoLocatedAdresse value, $Res Function(GeoLocatedAdresse) _then) = _$GeoLocatedAdresseCopyWithImpl;
@useResult
$Res call({
 String latitude, String longitude, String adresse, double rayon, double? heading, LatLng? lastLatLng
});




}
/// @nodoc
class _$GeoLocatedAdresseCopyWithImpl<$Res>
    implements $GeoLocatedAdresseCopyWith<$Res> {
  _$GeoLocatedAdresseCopyWithImpl(this._self, this._then);

  final GeoLocatedAdresse _self;
  final $Res Function(GeoLocatedAdresse) _then;

/// Create a copy of GeoLocatedAdresse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? latitude = null,Object? longitude = null,Object? adresse = null,Object? rayon = null,Object? heading = freezed,Object? lastLatLng = freezed,}) {
  return _then(_self.copyWith(
latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String,adresse: null == adresse ? _self.adresse : adresse // ignore: cast_nullable_to_non_nullable
as String,rayon: null == rayon ? _self.rayon : rayon // ignore: cast_nullable_to_non_nullable
as double,heading: freezed == heading ? _self.heading : heading // ignore: cast_nullable_to_non_nullable
as double?,lastLatLng: freezed == lastLatLng ? _self.lastLatLng : lastLatLng // ignore: cast_nullable_to_non_nullable
as LatLng?,
  ));
}

}


/// Adds pattern-matching-related methods to [GeoLocatedAdresse].
extension GeoLocatedAdressePatterns on GeoLocatedAdresse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GeoLocatedAdresse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GeoLocatedAdresse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GeoLocatedAdresse value)  $default,){
final _that = this;
switch (_that) {
case _GeoLocatedAdresse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GeoLocatedAdresse value)?  $default,){
final _that = this;
switch (_that) {
case _GeoLocatedAdresse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String latitude,  String longitude,  String adresse,  double rayon,  double? heading,  LatLng? lastLatLng)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GeoLocatedAdresse() when $default != null:
return $default(_that.latitude,_that.longitude,_that.adresse,_that.rayon,_that.heading,_that.lastLatLng);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String latitude,  String longitude,  String adresse,  double rayon,  double? heading,  LatLng? lastLatLng)  $default,) {final _that = this;
switch (_that) {
case _GeoLocatedAdresse():
return $default(_that.latitude,_that.longitude,_that.adresse,_that.rayon,_that.heading,_that.lastLatLng);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String latitude,  String longitude,  String adresse,  double rayon,  double? heading,  LatLng? lastLatLng)?  $default,) {final _that = this;
switch (_that) {
case _GeoLocatedAdresse() when $default != null:
return $default(_that.latitude,_that.longitude,_that.adresse,_that.rayon,_that.heading,_that.lastLatLng);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GeoLocatedAdresse implements GeoLocatedAdresse {
   _GeoLocatedAdresse({required this.latitude, required this.longitude, required this.adresse, required this.rayon, this.heading, this.lastLatLng});
  factory _GeoLocatedAdresse.fromJson(Map<String, dynamic> json) => _$GeoLocatedAdresseFromJson(json);

@override final  String latitude;
@override final  String longitude;
@override final  String adresse;
@override final  double rayon;
@override final  double? heading;
@override final  LatLng? lastLatLng;

/// Create a copy of GeoLocatedAdresse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GeoLocatedAdresseCopyWith<_GeoLocatedAdresse> get copyWith => __$GeoLocatedAdresseCopyWithImpl<_GeoLocatedAdresse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GeoLocatedAdresseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GeoLocatedAdresse&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.adresse, adresse) || other.adresse == adresse)&&(identical(other.rayon, rayon) || other.rayon == rayon)&&(identical(other.heading, heading) || other.heading == heading)&&(identical(other.lastLatLng, lastLatLng) || other.lastLatLng == lastLatLng));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latitude,longitude,adresse,rayon,heading,lastLatLng);

@override
String toString() {
  return 'GeoLocatedAdresse(latitude: $latitude, longitude: $longitude, adresse: $adresse, rayon: $rayon, heading: $heading, lastLatLng: $lastLatLng)';
}


}

/// @nodoc
abstract mixin class _$GeoLocatedAdresseCopyWith<$Res> implements $GeoLocatedAdresseCopyWith<$Res> {
  factory _$GeoLocatedAdresseCopyWith(_GeoLocatedAdresse value, $Res Function(_GeoLocatedAdresse) _then) = __$GeoLocatedAdresseCopyWithImpl;
@override @useResult
$Res call({
 String latitude, String longitude, String adresse, double rayon, double? heading, LatLng? lastLatLng
});




}
/// @nodoc
class __$GeoLocatedAdresseCopyWithImpl<$Res>
    implements _$GeoLocatedAdresseCopyWith<$Res> {
  __$GeoLocatedAdresseCopyWithImpl(this._self, this._then);

  final _GeoLocatedAdresse _self;
  final $Res Function(_GeoLocatedAdresse) _then;

/// Create a copy of GeoLocatedAdresse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? latitude = null,Object? longitude = null,Object? adresse = null,Object? rayon = null,Object? heading = freezed,Object? lastLatLng = freezed,}) {
  return _then(_GeoLocatedAdresse(
latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String,adresse: null == adresse ? _self.adresse : adresse // ignore: cast_nullable_to_non_nullable
as String,rayon: null == rayon ? _self.rayon : rayon // ignore: cast_nullable_to_non_nullable
as double,heading: freezed == heading ? _self.heading : heading // ignore: cast_nullable_to_non_nullable
as double?,lastLatLng: freezed == lastLatLng ? _self.lastLatLng : lastLatLng // ignore: cast_nullable_to_non_nullable
as LatLng?,
  ));
}


}


/// @nodoc
mixin _$Address {

 String? get highway;// mot rechercher
 String? get road; String? get suburb;// quartier
 String? get city;// commune
 String? get state;
/// Create a copy of Address
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddressCopyWith<Address> get copyWith => _$AddressCopyWithImpl<Address>(this as Address, _$identity);

  /// Serializes this Address to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Address&&(identical(other.highway, highway) || other.highway == highway)&&(identical(other.road, road) || other.road == road)&&(identical(other.suburb, suburb) || other.suburb == suburb)&&(identical(other.city, city) || other.city == city)&&(identical(other.state, state) || other.state == state));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,highway,road,suburb,city,state);

@override
String toString() {
  return 'Address(highway: $highway, road: $road, suburb: $suburb, city: $city, state: $state)';
}


}

/// @nodoc
abstract mixin class $AddressCopyWith<$Res>  {
  factory $AddressCopyWith(Address value, $Res Function(Address) _then) = _$AddressCopyWithImpl;
@useResult
$Res call({
 String? highway, String? road, String? suburb, String? city, String? state
});




}
/// @nodoc
class _$AddressCopyWithImpl<$Res>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._self, this._then);

  final Address _self;
  final $Res Function(Address) _then;

/// Create a copy of Address
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? highway = freezed,Object? road = freezed,Object? suburb = freezed,Object? city = freezed,Object? state = freezed,}) {
  return _then(_self.copyWith(
highway: freezed == highway ? _self.highway : highway // ignore: cast_nullable_to_non_nullable
as String?,road: freezed == road ? _self.road : road // ignore: cast_nullable_to_non_nullable
as String?,suburb: freezed == suburb ? _self.suburb : suburb // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Address].
extension AddressPatterns on Address {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Address value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Address() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Address value)  $default,){
final _that = this;
switch (_that) {
case _Address():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Address value)?  $default,){
final _that = this;
switch (_that) {
case _Address() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? highway,  String? road,  String? suburb,  String? city,  String? state)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Address() when $default != null:
return $default(_that.highway,_that.road,_that.suburb,_that.city,_that.state);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? highway,  String? road,  String? suburb,  String? city,  String? state)  $default,) {final _that = this;
switch (_that) {
case _Address():
return $default(_that.highway,_that.road,_that.suburb,_that.city,_that.state);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? highway,  String? road,  String? suburb,  String? city,  String? state)?  $default,) {final _that = this;
switch (_that) {
case _Address() when $default != null:
return $default(_that.highway,_that.road,_that.suburb,_that.city,_that.state);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Address implements Address {
   _Address({required this.highway, required this.road, required this.suburb, required this.city, required this.state});
  factory _Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);

@override final  String? highway;
// mot rechercher
@override final  String? road;
@override final  String? suburb;
// quartier
@override final  String? city;
// commune
@override final  String? state;

/// Create a copy of Address
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressCopyWith<_Address> get copyWith => __$AddressCopyWithImpl<_Address>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddressToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Address&&(identical(other.highway, highway) || other.highway == highway)&&(identical(other.road, road) || other.road == road)&&(identical(other.suburb, suburb) || other.suburb == suburb)&&(identical(other.city, city) || other.city == city)&&(identical(other.state, state) || other.state == state));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,highway,road,suburb,city,state);

@override
String toString() {
  return 'Address(highway: $highway, road: $road, suburb: $suburb, city: $city, state: $state)';
}


}

/// @nodoc
abstract mixin class _$AddressCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$AddressCopyWith(_Address value, $Res Function(_Address) _then) = __$AddressCopyWithImpl;
@override @useResult
$Res call({
 String? highway, String? road, String? suburb, String? city, String? state
});




}
/// @nodoc
class __$AddressCopyWithImpl<$Res>
    implements _$AddressCopyWith<$Res> {
  __$AddressCopyWithImpl(this._self, this._then);

  final _Address _self;
  final $Res Function(_Address) _then;

/// Create a copy of Address
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? highway = freezed,Object? road = freezed,Object? suburb = freezed,Object? city = freezed,Object? state = freezed,}) {
  return _then(_Address(
highway: freezed == highway ? _self.highway : highway // ignore: cast_nullable_to_non_nullable
as String?,road: freezed == road ? _self.road : road // ignore: cast_nullable_to_non_nullable
as String?,suburb: freezed == suburb ? _self.suburb : suburb // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$CreatCompteImage {

 String get file;// mot rechercher
 String get userId; String get formTherd;
/// Create a copy of CreatCompteImage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatCompteImageCopyWith<CreatCompteImage> get copyWith => _$CreatCompteImageCopyWithImpl<CreatCompteImage>(this as CreatCompteImage, _$identity);

  /// Serializes this CreatCompteImage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatCompteImage&&(identical(other.file, file) || other.file == file)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.formTherd, formTherd) || other.formTherd == formTherd));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,file,userId,formTherd);

@override
String toString() {
  return 'CreatCompteImage(file: $file, userId: $userId, formTherd: $formTherd)';
}


}

/// @nodoc
abstract mixin class $CreatCompteImageCopyWith<$Res>  {
  factory $CreatCompteImageCopyWith(CreatCompteImage value, $Res Function(CreatCompteImage) _then) = _$CreatCompteImageCopyWithImpl;
@useResult
$Res call({
 String file, String userId, String formTherd
});




}
/// @nodoc
class _$CreatCompteImageCopyWithImpl<$Res>
    implements $CreatCompteImageCopyWith<$Res> {
  _$CreatCompteImageCopyWithImpl(this._self, this._then);

  final CreatCompteImage _self;
  final $Res Function(CreatCompteImage) _then;

/// Create a copy of CreatCompteImage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? file = null,Object? userId = null,Object? formTherd = null,}) {
  return _then(_self.copyWith(
file: null == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,formTherd: null == formTherd ? _self.formTherd : formTherd // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreatCompteImage].
extension CreatCompteImagePatterns on CreatCompteImage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreatCompteImage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreatCompteImage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreatCompteImage value)  $default,){
final _that = this;
switch (_that) {
case _CreatCompteImage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreatCompteImage value)?  $default,){
final _that = this;
switch (_that) {
case _CreatCompteImage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String file,  String userId,  String formTherd)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreatCompteImage() when $default != null:
return $default(_that.file,_that.userId,_that.formTherd);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String file,  String userId,  String formTherd)  $default,) {final _that = this;
switch (_that) {
case _CreatCompteImage():
return $default(_that.file,_that.userId,_that.formTherd);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String file,  String userId,  String formTherd)?  $default,) {final _that = this;
switch (_that) {
case _CreatCompteImage() when $default != null:
return $default(_that.file,_that.userId,_that.formTherd);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreatCompteImage implements CreatCompteImage {
   _CreatCompteImage({required this.file, required this.userId, required this.formTherd});
  factory _CreatCompteImage.fromJson(Map<String, dynamic> json) => _$CreatCompteImageFromJson(json);

@override final  String file;
// mot rechercher
@override final  String userId;
@override final  String formTherd;

/// Create a copy of CreatCompteImage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatCompteImageCopyWith<_CreatCompteImage> get copyWith => __$CreatCompteImageCopyWithImpl<_CreatCompteImage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreatCompteImageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatCompteImage&&(identical(other.file, file) || other.file == file)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.formTherd, formTherd) || other.formTherd == formTherd));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,file,userId,formTherd);

@override
String toString() {
  return 'CreatCompteImage(file: $file, userId: $userId, formTherd: $formTherd)';
}


}

/// @nodoc
abstract mixin class _$CreatCompteImageCopyWith<$Res> implements $CreatCompteImageCopyWith<$Res> {
  factory _$CreatCompteImageCopyWith(_CreatCompteImage value, $Res Function(_CreatCompteImage) _then) = __$CreatCompteImageCopyWithImpl;
@override @useResult
$Res call({
 String file, String userId, String formTherd
});




}
/// @nodoc
class __$CreatCompteImageCopyWithImpl<$Res>
    implements _$CreatCompteImageCopyWith<$Res> {
  __$CreatCompteImageCopyWithImpl(this._self, this._then);

  final _CreatCompteImage _self;
  final $Res Function(_CreatCompteImage) _then;

/// Create a copy of CreatCompteImage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? file = null,Object? userId = null,Object? formTherd = null,}) {
  return _then(_CreatCompteImage(
file: null == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,formTherd: null == formTherd ? _self.formTherd : formTherd // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$CreatProfileImage {

 String get profileImage;// mot rechercher
 String get userId;
/// Create a copy of CreatProfileImage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatProfileImageCopyWith<CreatProfileImage> get copyWith => _$CreatProfileImageCopyWithImpl<CreatProfileImage>(this as CreatProfileImage, _$identity);

  /// Serializes this CreatProfileImage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatProfileImage&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,profileImage,userId);

@override
String toString() {
  return 'CreatProfileImage(profileImage: $profileImage, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $CreatProfileImageCopyWith<$Res>  {
  factory $CreatProfileImageCopyWith(CreatProfileImage value, $Res Function(CreatProfileImage) _then) = _$CreatProfileImageCopyWithImpl;
@useResult
$Res call({
 String profileImage, String userId
});




}
/// @nodoc
class _$CreatProfileImageCopyWithImpl<$Res>
    implements $CreatProfileImageCopyWith<$Res> {
  _$CreatProfileImageCopyWithImpl(this._self, this._then);

  final CreatProfileImage _self;
  final $Res Function(CreatProfileImage) _then;

/// Create a copy of CreatProfileImage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? profileImage = null,Object? userId = null,}) {
  return _then(_self.copyWith(
profileImage: null == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreatProfileImage].
extension CreatProfileImagePatterns on CreatProfileImage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreatProfileImage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreatProfileImage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreatProfileImage value)  $default,){
final _that = this;
switch (_that) {
case _CreatProfileImage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreatProfileImage value)?  $default,){
final _that = this;
switch (_that) {
case _CreatProfileImage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String profileImage,  String userId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreatProfileImage() when $default != null:
return $default(_that.profileImage,_that.userId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String profileImage,  String userId)  $default,) {final _that = this;
switch (_that) {
case _CreatProfileImage():
return $default(_that.profileImage,_that.userId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String profileImage,  String userId)?  $default,) {final _that = this;
switch (_that) {
case _CreatProfileImage() when $default != null:
return $default(_that.profileImage,_that.userId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreatProfileImage implements CreatProfileImage {
   _CreatProfileImage({required this.profileImage, required this.userId});
  factory _CreatProfileImage.fromJson(Map<String, dynamic> json) => _$CreatProfileImageFromJson(json);

@override final  String profileImage;
// mot rechercher
@override final  String userId;

/// Create a copy of CreatProfileImage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatProfileImageCopyWith<_CreatProfileImage> get copyWith => __$CreatProfileImageCopyWithImpl<_CreatProfileImage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreatProfileImageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatProfileImage&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,profileImage,userId);

@override
String toString() {
  return 'CreatProfileImage(profileImage: $profileImage, userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$CreatProfileImageCopyWith<$Res> implements $CreatProfileImageCopyWith<$Res> {
  factory _$CreatProfileImageCopyWith(_CreatProfileImage value, $Res Function(_CreatProfileImage) _then) = __$CreatProfileImageCopyWithImpl;
@override @useResult
$Res call({
 String profileImage, String userId
});




}
/// @nodoc
class __$CreatProfileImageCopyWithImpl<$Res>
    implements _$CreatProfileImageCopyWith<$Res> {
  __$CreatProfileImageCopyWithImpl(this._self, this._then);

  final _CreatProfileImage _self;
  final $Res Function(_CreatProfileImage) _then;

/// Create a copy of CreatProfileImage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? profileImage = null,Object? userId = null,}) {
  return _then(_CreatProfileImage(
profileImage: null == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
