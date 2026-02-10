// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_compte_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateCompteState {

 TextFormz get nomResidence; TextFormz get specialite; PhoneFormz get telephone; TextFormz get adresse; TextFormz get lat; TextFormz get long; PhoneFormz get whatsapp; TextFormz get facebok; TextFormz get email; FormzSubmissionStatus get status; String get errorMessage; bool get isValide;
/// Create a copy of CreateCompteState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateCompteStateCopyWith<CreateCompteState> get copyWith => _$CreateCompteStateCopyWithImpl<CreateCompteState>(this as CreateCompteState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateCompteState&&(identical(other.nomResidence, nomResidence) || other.nomResidence == nomResidence)&&(identical(other.specialite, specialite) || other.specialite == specialite)&&(identical(other.telephone, telephone) || other.telephone == telephone)&&(identical(other.adresse, adresse) || other.adresse == adresse)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.long, long) || other.long == long)&&(identical(other.whatsapp, whatsapp) || other.whatsapp == whatsapp)&&(identical(other.facebok, facebok) || other.facebok == facebok)&&(identical(other.email, email) || other.email == email)&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isValide, isValide) || other.isValide == isValide));
}


@override
int get hashCode => Object.hash(runtimeType,nomResidence,specialite,telephone,adresse,lat,long,whatsapp,facebok,email,status,errorMessage,isValide);

@override
String toString() {
  return 'CreateCompteState(nomResidence: $nomResidence, specialite: $specialite, telephone: $telephone, adresse: $adresse, lat: $lat, long: $long, whatsapp: $whatsapp, facebok: $facebok, email: $email, status: $status, errorMessage: $errorMessage, isValide: $isValide)';
}


}

/// @nodoc
abstract mixin class $CreateCompteStateCopyWith<$Res>  {
  factory $CreateCompteStateCopyWith(CreateCompteState value, $Res Function(CreateCompteState) _then) = _$CreateCompteStateCopyWithImpl;
@useResult
$Res call({
 TextFormz nomResidence, TextFormz specialite, PhoneFormz telephone, TextFormz adresse, TextFormz lat, TextFormz long, PhoneFormz whatsapp, TextFormz facebok, TextFormz email, FormzSubmissionStatus status, String errorMessage, bool isValide
});




}
/// @nodoc
class _$CreateCompteStateCopyWithImpl<$Res>
    implements $CreateCompteStateCopyWith<$Res> {
  _$CreateCompteStateCopyWithImpl(this._self, this._then);

  final CreateCompteState _self;
  final $Res Function(CreateCompteState) _then;

/// Create a copy of CreateCompteState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nomResidence = null,Object? specialite = null,Object? telephone = null,Object? adresse = null,Object? lat = null,Object? long = null,Object? whatsapp = null,Object? facebok = null,Object? email = null,Object? status = null,Object? errorMessage = null,Object? isValide = null,}) {
  return _then(_self.copyWith(
nomResidence: null == nomResidence ? _self.nomResidence : nomResidence // ignore: cast_nullable_to_non_nullable
as TextFormz,specialite: null == specialite ? _self.specialite : specialite // ignore: cast_nullable_to_non_nullable
as TextFormz,telephone: null == telephone ? _self.telephone : telephone // ignore: cast_nullable_to_non_nullable
as PhoneFormz,adresse: null == adresse ? _self.adresse : adresse // ignore: cast_nullable_to_non_nullable
as TextFormz,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as TextFormz,long: null == long ? _self.long : long // ignore: cast_nullable_to_non_nullable
as TextFormz,whatsapp: null == whatsapp ? _self.whatsapp : whatsapp // ignore: cast_nullable_to_non_nullable
as PhoneFormz,facebok: null == facebok ? _self.facebok : facebok // ignore: cast_nullable_to_non_nullable
as TextFormz,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as TextFormz,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FormzSubmissionStatus,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,isValide: null == isValide ? _self.isValide : isValide // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateCompteState].
extension CreateCompteStatePatterns on CreateCompteState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( SCreateCompteState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case SCreateCompteState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( SCreateCompteState value)  $default,){
final _that = this;
switch (_that) {
case SCreateCompteState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( SCreateCompteState value)?  $default,){
final _that = this;
switch (_that) {
case SCreateCompteState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TextFormz nomResidence,  TextFormz specialite,  PhoneFormz telephone,  TextFormz adresse,  TextFormz lat,  TextFormz long,  PhoneFormz whatsapp,  TextFormz facebok,  TextFormz email,  FormzSubmissionStatus status,  String errorMessage,  bool isValide)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case SCreateCompteState() when $default != null:
return $default(_that.nomResidence,_that.specialite,_that.telephone,_that.adresse,_that.lat,_that.long,_that.whatsapp,_that.facebok,_that.email,_that.status,_that.errorMessage,_that.isValide);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TextFormz nomResidence,  TextFormz specialite,  PhoneFormz telephone,  TextFormz adresse,  TextFormz lat,  TextFormz long,  PhoneFormz whatsapp,  TextFormz facebok,  TextFormz email,  FormzSubmissionStatus status,  String errorMessage,  bool isValide)  $default,) {final _that = this;
switch (_that) {
case SCreateCompteState():
return $default(_that.nomResidence,_that.specialite,_that.telephone,_that.adresse,_that.lat,_that.long,_that.whatsapp,_that.facebok,_that.email,_that.status,_that.errorMessage,_that.isValide);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TextFormz nomResidence,  TextFormz specialite,  PhoneFormz telephone,  TextFormz adresse,  TextFormz lat,  TextFormz long,  PhoneFormz whatsapp,  TextFormz facebok,  TextFormz email,  FormzSubmissionStatus status,  String errorMessage,  bool isValide)?  $default,) {final _that = this;
switch (_that) {
case SCreateCompteState() when $default != null:
return $default(_that.nomResidence,_that.specialite,_that.telephone,_that.adresse,_that.lat,_that.long,_that.whatsapp,_that.facebok,_that.email,_that.status,_that.errorMessage,_that.isValide);case _:
  return null;

}
}

}

/// @nodoc


class SCreateCompteState implements CreateCompteState {
   SCreateCompteState({required this.nomResidence, required this.specialite, required this.telephone, required this.adresse, required this.lat, required this.long, required this.whatsapp, required this.facebok, required this.email, required this.status, required this.errorMessage, required this.isValide});
  

@override final  TextFormz nomResidence;
@override final  TextFormz specialite;
@override final  PhoneFormz telephone;
@override final  TextFormz adresse;
@override final  TextFormz lat;
@override final  TextFormz long;
@override final  PhoneFormz whatsapp;
@override final  TextFormz facebok;
@override final  TextFormz email;
@override final  FormzSubmissionStatus status;
@override final  String errorMessage;
@override final  bool isValide;

/// Create a copy of CreateCompteState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SCreateCompteStateCopyWith<SCreateCompteState> get copyWith => _$SCreateCompteStateCopyWithImpl<SCreateCompteState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SCreateCompteState&&(identical(other.nomResidence, nomResidence) || other.nomResidence == nomResidence)&&(identical(other.specialite, specialite) || other.specialite == specialite)&&(identical(other.telephone, telephone) || other.telephone == telephone)&&(identical(other.adresse, adresse) || other.adresse == adresse)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.long, long) || other.long == long)&&(identical(other.whatsapp, whatsapp) || other.whatsapp == whatsapp)&&(identical(other.facebok, facebok) || other.facebok == facebok)&&(identical(other.email, email) || other.email == email)&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isValide, isValide) || other.isValide == isValide));
}


@override
int get hashCode => Object.hash(runtimeType,nomResidence,specialite,telephone,adresse,lat,long,whatsapp,facebok,email,status,errorMessage,isValide);

@override
String toString() {
  return 'CreateCompteState(nomResidence: $nomResidence, specialite: $specialite, telephone: $telephone, adresse: $adresse, lat: $lat, long: $long, whatsapp: $whatsapp, facebok: $facebok, email: $email, status: $status, errorMessage: $errorMessage, isValide: $isValide)';
}


}

/// @nodoc
abstract mixin class $SCreateCompteStateCopyWith<$Res> implements $CreateCompteStateCopyWith<$Res> {
  factory $SCreateCompteStateCopyWith(SCreateCompteState value, $Res Function(SCreateCompteState) _then) = _$SCreateCompteStateCopyWithImpl;
@override @useResult
$Res call({
 TextFormz nomResidence, TextFormz specialite, PhoneFormz telephone, TextFormz adresse, TextFormz lat, TextFormz long, PhoneFormz whatsapp, TextFormz facebok, TextFormz email, FormzSubmissionStatus status, String errorMessage, bool isValide
});




}
/// @nodoc
class _$SCreateCompteStateCopyWithImpl<$Res>
    implements $SCreateCompteStateCopyWith<$Res> {
  _$SCreateCompteStateCopyWithImpl(this._self, this._then);

  final SCreateCompteState _self;
  final $Res Function(SCreateCompteState) _then;

/// Create a copy of CreateCompteState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nomResidence = null,Object? specialite = null,Object? telephone = null,Object? adresse = null,Object? lat = null,Object? long = null,Object? whatsapp = null,Object? facebok = null,Object? email = null,Object? status = null,Object? errorMessage = null,Object? isValide = null,}) {
  return _then(SCreateCompteState(
nomResidence: null == nomResidence ? _self.nomResidence : nomResidence // ignore: cast_nullable_to_non_nullable
as TextFormz,specialite: null == specialite ? _self.specialite : specialite // ignore: cast_nullable_to_non_nullable
as TextFormz,telephone: null == telephone ? _self.telephone : telephone // ignore: cast_nullable_to_non_nullable
as PhoneFormz,adresse: null == adresse ? _self.adresse : adresse // ignore: cast_nullable_to_non_nullable
as TextFormz,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as TextFormz,long: null == long ? _self.long : long // ignore: cast_nullable_to_non_nullable
as TextFormz,whatsapp: null == whatsapp ? _self.whatsapp : whatsapp // ignore: cast_nullable_to_non_nullable
as PhoneFormz,facebok: null == facebok ? _self.facebok : facebok // ignore: cast_nullable_to_non_nullable
as TextFormz,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as TextFormz,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FormzSubmissionStatus,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,isValide: null == isValide ? _self.isValide : isValide // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$CreateCompteHbState {

 TextFormz get roomNumber; TextFormz get averageBed; TextFormz get selectedOption; TextFormz get description; TextFormz get prixMax; TextFormz get prixMin; TextFormz get typeHome; FormzSubmissionStatus get status; String get errorMessage; bool get isValide;
/// Create a copy of CreateCompteHbState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateCompteHbStateCopyWith<CreateCompteHbState> get copyWith => _$CreateCompteHbStateCopyWithImpl<CreateCompteHbState>(this as CreateCompteHbState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateCompteHbState&&(identical(other.roomNumber, roomNumber) || other.roomNumber == roomNumber)&&(identical(other.averageBed, averageBed) || other.averageBed == averageBed)&&(identical(other.selectedOption, selectedOption) || other.selectedOption == selectedOption)&&(identical(other.description, description) || other.description == description)&&(identical(other.prixMax, prixMax) || other.prixMax == prixMax)&&(identical(other.prixMin, prixMin) || other.prixMin == prixMin)&&(identical(other.typeHome, typeHome) || other.typeHome == typeHome)&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isValide, isValide) || other.isValide == isValide));
}


@override
int get hashCode => Object.hash(runtimeType,roomNumber,averageBed,selectedOption,description,prixMax,prixMin,typeHome,status,errorMessage,isValide);

@override
String toString() {
  return 'CreateCompteHbState(roomNumber: $roomNumber, averageBed: $averageBed, selectedOption: $selectedOption, description: $description, prixMax: $prixMax, prixMin: $prixMin, typeHome: $typeHome, status: $status, errorMessage: $errorMessage, isValide: $isValide)';
}


}

/// @nodoc
abstract mixin class $CreateCompteHbStateCopyWith<$Res>  {
  factory $CreateCompteHbStateCopyWith(CreateCompteHbState value, $Res Function(CreateCompteHbState) _then) = _$CreateCompteHbStateCopyWithImpl;
@useResult
$Res call({
 TextFormz roomNumber, TextFormz averageBed, TextFormz selectedOption, TextFormz description, TextFormz prixMax, TextFormz prixMin, TextFormz typeHome, FormzSubmissionStatus status, String errorMessage, bool isValide
});




}
/// @nodoc
class _$CreateCompteHbStateCopyWithImpl<$Res>
    implements $CreateCompteHbStateCopyWith<$Res> {
  _$CreateCompteHbStateCopyWithImpl(this._self, this._then);

  final CreateCompteHbState _self;
  final $Res Function(CreateCompteHbState) _then;

/// Create a copy of CreateCompteHbState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? roomNumber = null,Object? averageBed = null,Object? selectedOption = null,Object? description = null,Object? prixMax = null,Object? prixMin = null,Object? typeHome = null,Object? status = null,Object? errorMessage = null,Object? isValide = null,}) {
  return _then(_self.copyWith(
roomNumber: null == roomNumber ? _self.roomNumber : roomNumber // ignore: cast_nullable_to_non_nullable
as TextFormz,averageBed: null == averageBed ? _self.averageBed : averageBed // ignore: cast_nullable_to_non_nullable
as TextFormz,selectedOption: null == selectedOption ? _self.selectedOption : selectedOption // ignore: cast_nullable_to_non_nullable
as TextFormz,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as TextFormz,prixMax: null == prixMax ? _self.prixMax : prixMax // ignore: cast_nullable_to_non_nullable
as TextFormz,prixMin: null == prixMin ? _self.prixMin : prixMin // ignore: cast_nullable_to_non_nullable
as TextFormz,typeHome: null == typeHome ? _self.typeHome : typeHome // ignore: cast_nullable_to_non_nullable
as TextFormz,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FormzSubmissionStatus,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,isValide: null == isValide ? _self.isValide : isValide // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateCompteHbState].
extension CreateCompteHbStatePatterns on CreateCompteHbState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateCompteHbState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateCompteHbState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateCompteHbState value)  $default,){
final _that = this;
switch (_that) {
case _CreateCompteHbState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateCompteHbState value)?  $default,){
final _that = this;
switch (_that) {
case _CreateCompteHbState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TextFormz roomNumber,  TextFormz averageBed,  TextFormz selectedOption,  TextFormz description,  TextFormz prixMax,  TextFormz prixMin,  TextFormz typeHome,  FormzSubmissionStatus status,  String errorMessage,  bool isValide)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateCompteHbState() when $default != null:
return $default(_that.roomNumber,_that.averageBed,_that.selectedOption,_that.description,_that.prixMax,_that.prixMin,_that.typeHome,_that.status,_that.errorMessage,_that.isValide);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TextFormz roomNumber,  TextFormz averageBed,  TextFormz selectedOption,  TextFormz description,  TextFormz prixMax,  TextFormz prixMin,  TextFormz typeHome,  FormzSubmissionStatus status,  String errorMessage,  bool isValide)  $default,) {final _that = this;
switch (_that) {
case _CreateCompteHbState():
return $default(_that.roomNumber,_that.averageBed,_that.selectedOption,_that.description,_that.prixMax,_that.prixMin,_that.typeHome,_that.status,_that.errorMessage,_that.isValide);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TextFormz roomNumber,  TextFormz averageBed,  TextFormz selectedOption,  TextFormz description,  TextFormz prixMax,  TextFormz prixMin,  TextFormz typeHome,  FormzSubmissionStatus status,  String errorMessage,  bool isValide)?  $default,) {final _that = this;
switch (_that) {
case _CreateCompteHbState() when $default != null:
return $default(_that.roomNumber,_that.averageBed,_that.selectedOption,_that.description,_that.prixMax,_that.prixMin,_that.typeHome,_that.status,_that.errorMessage,_that.isValide);case _:
  return null;

}
}

}

/// @nodoc


class _CreateCompteHbState implements CreateCompteHbState {
  const _CreateCompteHbState({required this.roomNumber, required this.averageBed, required this.selectedOption, required this.description, required this.prixMax, required this.prixMin, required this.typeHome, required this.status, required this.errorMessage, required this.isValide});
  

@override final  TextFormz roomNumber;
@override final  TextFormz averageBed;
@override final  TextFormz selectedOption;
@override final  TextFormz description;
@override final  TextFormz prixMax;
@override final  TextFormz prixMin;
@override final  TextFormz typeHome;
@override final  FormzSubmissionStatus status;
@override final  String errorMessage;
@override final  bool isValide;

/// Create a copy of CreateCompteHbState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateCompteHbStateCopyWith<_CreateCompteHbState> get copyWith => __$CreateCompteHbStateCopyWithImpl<_CreateCompteHbState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateCompteHbState&&(identical(other.roomNumber, roomNumber) || other.roomNumber == roomNumber)&&(identical(other.averageBed, averageBed) || other.averageBed == averageBed)&&(identical(other.selectedOption, selectedOption) || other.selectedOption == selectedOption)&&(identical(other.description, description) || other.description == description)&&(identical(other.prixMax, prixMax) || other.prixMax == prixMax)&&(identical(other.prixMin, prixMin) || other.prixMin == prixMin)&&(identical(other.typeHome, typeHome) || other.typeHome == typeHome)&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isValide, isValide) || other.isValide == isValide));
}


@override
int get hashCode => Object.hash(runtimeType,roomNumber,averageBed,selectedOption,description,prixMax,prixMin,typeHome,status,errorMessage,isValide);

@override
String toString() {
  return 'CreateCompteHbState(roomNumber: $roomNumber, averageBed: $averageBed, selectedOption: $selectedOption, description: $description, prixMax: $prixMax, prixMin: $prixMin, typeHome: $typeHome, status: $status, errorMessage: $errorMessage, isValide: $isValide)';
}


}

/// @nodoc
abstract mixin class _$CreateCompteHbStateCopyWith<$Res> implements $CreateCompteHbStateCopyWith<$Res> {
  factory _$CreateCompteHbStateCopyWith(_CreateCompteHbState value, $Res Function(_CreateCompteHbState) _then) = __$CreateCompteHbStateCopyWithImpl;
@override @useResult
$Res call({
 TextFormz roomNumber, TextFormz averageBed, TextFormz selectedOption, TextFormz description, TextFormz prixMax, TextFormz prixMin, TextFormz typeHome, FormzSubmissionStatus status, String errorMessage, bool isValide
});




}
/// @nodoc
class __$CreateCompteHbStateCopyWithImpl<$Res>
    implements _$CreateCompteHbStateCopyWith<$Res> {
  __$CreateCompteHbStateCopyWithImpl(this._self, this._then);

  final _CreateCompteHbState _self;
  final $Res Function(_CreateCompteHbState) _then;

/// Create a copy of CreateCompteHbState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? roomNumber = null,Object? averageBed = null,Object? selectedOption = null,Object? description = null,Object? prixMax = null,Object? prixMin = null,Object? typeHome = null,Object? status = null,Object? errorMessage = null,Object? isValide = null,}) {
  return _then(_CreateCompteHbState(
roomNumber: null == roomNumber ? _self.roomNumber : roomNumber // ignore: cast_nullable_to_non_nullable
as TextFormz,averageBed: null == averageBed ? _self.averageBed : averageBed // ignore: cast_nullable_to_non_nullable
as TextFormz,selectedOption: null == selectedOption ? _self.selectedOption : selectedOption // ignore: cast_nullable_to_non_nullable
as TextFormz,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as TextFormz,prixMax: null == prixMax ? _self.prixMax : prixMax // ignore: cast_nullable_to_non_nullable
as TextFormz,prixMin: null == prixMin ? _self.prixMin : prixMin // ignore: cast_nullable_to_non_nullable
as TextFormz,typeHome: null == typeHome ? _self.typeHome : typeHome // ignore: cast_nullable_to_non_nullable
as TextFormz,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FormzSubmissionStatus,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,isValide: null == isValide ? _self.isValide : isValide // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$CreateCompteCheckingFileState {

 TextFormz get cnRecto; TextFormz get cnvecso; TextFormz get formFive; TextFormz get attestation; FormzSubmissionStatus get status; String get errorMessage; bool get isValide;
/// Create a copy of CreateCompteCheckingFileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateCompteCheckingFileStateCopyWith<CreateCompteCheckingFileState> get copyWith => _$CreateCompteCheckingFileStateCopyWithImpl<CreateCompteCheckingFileState>(this as CreateCompteCheckingFileState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateCompteCheckingFileState&&(identical(other.cnRecto, cnRecto) || other.cnRecto == cnRecto)&&(identical(other.cnvecso, cnvecso) || other.cnvecso == cnvecso)&&(identical(other.formFive, formFive) || other.formFive == formFive)&&(identical(other.attestation, attestation) || other.attestation == attestation)&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isValide, isValide) || other.isValide == isValide));
}


@override
int get hashCode => Object.hash(runtimeType,cnRecto,cnvecso,formFive,attestation,status,errorMessage,isValide);

@override
String toString() {
  return 'CreateCompteCheckingFileState(cnRecto: $cnRecto, cnvecso: $cnvecso, formFive: $formFive, attestation: $attestation, status: $status, errorMessage: $errorMessage, isValide: $isValide)';
}


}

/// @nodoc
abstract mixin class $CreateCompteCheckingFileStateCopyWith<$Res>  {
  factory $CreateCompteCheckingFileStateCopyWith(CreateCompteCheckingFileState value, $Res Function(CreateCompteCheckingFileState) _then) = _$CreateCompteCheckingFileStateCopyWithImpl;
@useResult
$Res call({
 TextFormz cnRecto, TextFormz cnvecso, TextFormz formFive, TextFormz attestation, FormzSubmissionStatus status, String errorMessage, bool isValide
});




}
/// @nodoc
class _$CreateCompteCheckingFileStateCopyWithImpl<$Res>
    implements $CreateCompteCheckingFileStateCopyWith<$Res> {
  _$CreateCompteCheckingFileStateCopyWithImpl(this._self, this._then);

  final CreateCompteCheckingFileState _self;
  final $Res Function(CreateCompteCheckingFileState) _then;

/// Create a copy of CreateCompteCheckingFileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cnRecto = null,Object? cnvecso = null,Object? formFive = null,Object? attestation = null,Object? status = null,Object? errorMessage = null,Object? isValide = null,}) {
  return _then(_self.copyWith(
cnRecto: null == cnRecto ? _self.cnRecto : cnRecto // ignore: cast_nullable_to_non_nullable
as TextFormz,cnvecso: null == cnvecso ? _self.cnvecso : cnvecso // ignore: cast_nullable_to_non_nullable
as TextFormz,formFive: null == formFive ? _self.formFive : formFive // ignore: cast_nullable_to_non_nullable
as TextFormz,attestation: null == attestation ? _self.attestation : attestation // ignore: cast_nullable_to_non_nullable
as TextFormz,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FormzSubmissionStatus,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,isValide: null == isValide ? _self.isValide : isValide // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateCompteCheckingFileState].
extension CreateCompteCheckingFileStatePatterns on CreateCompteCheckingFileState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateCompteCheckingFileState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateCompteCheckingFileState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateCompteCheckingFileState value)  $default,){
final _that = this;
switch (_that) {
case _CreateCompteCheckingFileState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateCompteCheckingFileState value)?  $default,){
final _that = this;
switch (_that) {
case _CreateCompteCheckingFileState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TextFormz cnRecto,  TextFormz cnvecso,  TextFormz formFive,  TextFormz attestation,  FormzSubmissionStatus status,  String errorMessage,  bool isValide)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateCompteCheckingFileState() when $default != null:
return $default(_that.cnRecto,_that.cnvecso,_that.formFive,_that.attestation,_that.status,_that.errorMessage,_that.isValide);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TextFormz cnRecto,  TextFormz cnvecso,  TextFormz formFive,  TextFormz attestation,  FormzSubmissionStatus status,  String errorMessage,  bool isValide)  $default,) {final _that = this;
switch (_that) {
case _CreateCompteCheckingFileState():
return $default(_that.cnRecto,_that.cnvecso,_that.formFive,_that.attestation,_that.status,_that.errorMessage,_that.isValide);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TextFormz cnRecto,  TextFormz cnvecso,  TextFormz formFive,  TextFormz attestation,  FormzSubmissionStatus status,  String errorMessage,  bool isValide)?  $default,) {final _that = this;
switch (_that) {
case _CreateCompteCheckingFileState() when $default != null:
return $default(_that.cnRecto,_that.cnvecso,_that.formFive,_that.attestation,_that.status,_that.errorMessage,_that.isValide);case _:
  return null;

}
}

}

/// @nodoc


class _CreateCompteCheckingFileState implements CreateCompteCheckingFileState {
  const _CreateCompteCheckingFileState({required this.cnRecto, required this.cnvecso, required this.formFive, required this.attestation, required this.status, required this.errorMessage, required this.isValide});
  

@override final  TextFormz cnRecto;
@override final  TextFormz cnvecso;
@override final  TextFormz formFive;
@override final  TextFormz attestation;
@override final  FormzSubmissionStatus status;
@override final  String errorMessage;
@override final  bool isValide;

/// Create a copy of CreateCompteCheckingFileState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateCompteCheckingFileStateCopyWith<_CreateCompteCheckingFileState> get copyWith => __$CreateCompteCheckingFileStateCopyWithImpl<_CreateCompteCheckingFileState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateCompteCheckingFileState&&(identical(other.cnRecto, cnRecto) || other.cnRecto == cnRecto)&&(identical(other.cnvecso, cnvecso) || other.cnvecso == cnvecso)&&(identical(other.formFive, formFive) || other.formFive == formFive)&&(identical(other.attestation, attestation) || other.attestation == attestation)&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isValide, isValide) || other.isValide == isValide));
}


@override
int get hashCode => Object.hash(runtimeType,cnRecto,cnvecso,formFive,attestation,status,errorMessage,isValide);

@override
String toString() {
  return 'CreateCompteCheckingFileState(cnRecto: $cnRecto, cnvecso: $cnvecso, formFive: $formFive, attestation: $attestation, status: $status, errorMessage: $errorMessage, isValide: $isValide)';
}


}

/// @nodoc
abstract mixin class _$CreateCompteCheckingFileStateCopyWith<$Res> implements $CreateCompteCheckingFileStateCopyWith<$Res> {
  factory _$CreateCompteCheckingFileStateCopyWith(_CreateCompteCheckingFileState value, $Res Function(_CreateCompteCheckingFileState) _then) = __$CreateCompteCheckingFileStateCopyWithImpl;
@override @useResult
$Res call({
 TextFormz cnRecto, TextFormz cnvecso, TextFormz formFive, TextFormz attestation, FormzSubmissionStatus status, String errorMessage, bool isValide
});




}
/// @nodoc
class __$CreateCompteCheckingFileStateCopyWithImpl<$Res>
    implements _$CreateCompteCheckingFileStateCopyWith<$Res> {
  __$CreateCompteCheckingFileStateCopyWithImpl(this._self, this._then);

  final _CreateCompteCheckingFileState _self;
  final $Res Function(_CreateCompteCheckingFileState) _then;

/// Create a copy of CreateCompteCheckingFileState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cnRecto = null,Object? cnvecso = null,Object? formFive = null,Object? attestation = null,Object? status = null,Object? errorMessage = null,Object? isValide = null,}) {
  return _then(_CreateCompteCheckingFileState(
cnRecto: null == cnRecto ? _self.cnRecto : cnRecto // ignore: cast_nullable_to_non_nullable
as TextFormz,cnvecso: null == cnvecso ? _self.cnvecso : cnvecso // ignore: cast_nullable_to_non_nullable
as TextFormz,formFive: null == formFive ? _self.formFive : formFive // ignore: cast_nullable_to_non_nullable
as TextFormz,attestation: null == attestation ? _self.attestation : attestation // ignore: cast_nullable_to_non_nullable
as TextFormz,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FormzSubmissionStatus,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,isValide: null == isValide ? _self.isValide : isValide // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
