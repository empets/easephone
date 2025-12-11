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

 TextFormz get nomResidence; TextFormz get specialite; TextFormz get telephone; TextFormz get adresse; FormzSubmissionStatus get status; String get errorMessage; bool get isValide;
/// Create a copy of CreateCompteState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateCompteStateCopyWith<CreateCompteState> get copyWith => _$CreateCompteStateCopyWithImpl<CreateCompteState>(this as CreateCompteState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateCompteState&&(identical(other.nomResidence, nomResidence) || other.nomResidence == nomResidence)&&(identical(other.specialite, specialite) || other.specialite == specialite)&&(identical(other.telephone, telephone) || other.telephone == telephone)&&(identical(other.adresse, adresse) || other.adresse == adresse)&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isValide, isValide) || other.isValide == isValide));
}


@override
int get hashCode => Object.hash(runtimeType,nomResidence,specialite,telephone,adresse,status,errorMessage,isValide);

@override
String toString() {
  return 'CreateCompteState(nomResidence: $nomResidence, specialite: $specialite, telephone: $telephone, adresse: $adresse, status: $status, errorMessage: $errorMessage, isValide: $isValide)';
}


}

/// @nodoc
abstract mixin class $CreateCompteStateCopyWith<$Res>  {
  factory $CreateCompteStateCopyWith(CreateCompteState value, $Res Function(CreateCompteState) _then) = _$CreateCompteStateCopyWithImpl;
@useResult
$Res call({
 TextFormz nomResidence, TextFormz specialite, TextFormz telephone, TextFormz adresse, FormzSubmissionStatus status, String errorMessage, bool isValide
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
@pragma('vm:prefer-inline') @override $Res call({Object? nomResidence = null,Object? specialite = null,Object? telephone = null,Object? adresse = null,Object? status = null,Object? errorMessage = null,Object? isValide = null,}) {
  return _then(_self.copyWith(
nomResidence: null == nomResidence ? _self.nomResidence : nomResidence // ignore: cast_nullable_to_non_nullable
as TextFormz,specialite: null == specialite ? _self.specialite : specialite // ignore: cast_nullable_to_non_nullable
as TextFormz,telephone: null == telephone ? _self.telephone : telephone // ignore: cast_nullable_to_non_nullable
as TextFormz,adresse: null == adresse ? _self.adresse : adresse // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TextFormz nomResidence,  TextFormz specialite,  TextFormz telephone,  TextFormz adresse,  FormzSubmissionStatus status,  String errorMessage,  bool isValide)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case SCreateCompteState() when $default != null:
return $default(_that.nomResidence,_that.specialite,_that.telephone,_that.adresse,_that.status,_that.errorMessage,_that.isValide);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TextFormz nomResidence,  TextFormz specialite,  TextFormz telephone,  TextFormz adresse,  FormzSubmissionStatus status,  String errorMessage,  bool isValide)  $default,) {final _that = this;
switch (_that) {
case SCreateCompteState():
return $default(_that.nomResidence,_that.specialite,_that.telephone,_that.adresse,_that.status,_that.errorMessage,_that.isValide);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TextFormz nomResidence,  TextFormz specialite,  TextFormz telephone,  TextFormz adresse,  FormzSubmissionStatus status,  String errorMessage,  bool isValide)?  $default,) {final _that = this;
switch (_that) {
case SCreateCompteState() when $default != null:
return $default(_that.nomResidence,_that.specialite,_that.telephone,_that.adresse,_that.status,_that.errorMessage,_that.isValide);case _:
  return null;

}
}

}

/// @nodoc


class SCreateCompteState implements CreateCompteState {
   SCreateCompteState({required this.nomResidence, required this.specialite, required this.telephone, required this.adresse, required this.status, required this.errorMessage, required this.isValide});
  

@override final  TextFormz nomResidence;
@override final  TextFormz specialite;
@override final  TextFormz telephone;
@override final  TextFormz adresse;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SCreateCompteState&&(identical(other.nomResidence, nomResidence) || other.nomResidence == nomResidence)&&(identical(other.specialite, specialite) || other.specialite == specialite)&&(identical(other.telephone, telephone) || other.telephone == telephone)&&(identical(other.adresse, adresse) || other.adresse == adresse)&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isValide, isValide) || other.isValide == isValide));
}


@override
int get hashCode => Object.hash(runtimeType,nomResidence,specialite,telephone,adresse,status,errorMessage,isValide);

@override
String toString() {
  return 'CreateCompteState(nomResidence: $nomResidence, specialite: $specialite, telephone: $telephone, adresse: $adresse, status: $status, errorMessage: $errorMessage, isValide: $isValide)';
}


}

/// @nodoc
abstract mixin class $SCreateCompteStateCopyWith<$Res> implements $CreateCompteStateCopyWith<$Res> {
  factory $SCreateCompteStateCopyWith(SCreateCompteState value, $Res Function(SCreateCompteState) _then) = _$SCreateCompteStateCopyWithImpl;
@override @useResult
$Res call({
 TextFormz nomResidence, TextFormz specialite, TextFormz telephone, TextFormz adresse, FormzSubmissionStatus status, String errorMessage, bool isValide
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
@override @pragma('vm:prefer-inline') $Res call({Object? nomResidence = null,Object? specialite = null,Object? telephone = null,Object? adresse = null,Object? status = null,Object? errorMessage = null,Object? isValide = null,}) {
  return _then(SCreateCompteState(
nomResidence: null == nomResidence ? _self.nomResidence : nomResidence // ignore: cast_nullable_to_non_nullable
as TextFormz,specialite: null == specialite ? _self.specialite : specialite // ignore: cast_nullable_to_non_nullable
as TextFormz,telephone: null == telephone ? _self.telephone : telephone // ignore: cast_nullable_to_non_nullable
as TextFormz,adresse: null == adresse ? _self.adresse : adresse // ignore: cast_nullable_to_non_nullable
as TextFormz,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FormzSubmissionStatus,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,isValide: null == isValide ? _self.isValide : isValide // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$CreateCompteHbState {

 TextFormz get roomNumber; TextFormz get averageBed; TextFormz get selectedOption; TextFormz get description; FormzSubmissionStatus get status; String get errorMessage; bool get isValide;
/// Create a copy of CreateCompteHbState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateCompteHbStateCopyWith<CreateCompteHbState> get copyWith => _$CreateCompteHbStateCopyWithImpl<CreateCompteHbState>(this as CreateCompteHbState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateCompteHbState&&(identical(other.roomNumber, roomNumber) || other.roomNumber == roomNumber)&&(identical(other.averageBed, averageBed) || other.averageBed == averageBed)&&(identical(other.selectedOption, selectedOption) || other.selectedOption == selectedOption)&&(identical(other.description, description) || other.description == description)&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isValide, isValide) || other.isValide == isValide));
}


@override
int get hashCode => Object.hash(runtimeType,roomNumber,averageBed,selectedOption,description,status,errorMessage,isValide);

@override
String toString() {
  return 'CreateCompteHbState(roomNumber: $roomNumber, averageBed: $averageBed, selectedOption: $selectedOption, description: $description, status: $status, errorMessage: $errorMessage, isValide: $isValide)';
}


}

/// @nodoc
abstract mixin class $CreateCompteHbStateCopyWith<$Res>  {
  factory $CreateCompteHbStateCopyWith(CreateCompteHbState value, $Res Function(CreateCompteHbState) _then) = _$CreateCompteHbStateCopyWithImpl;
@useResult
$Res call({
 TextFormz roomNumber, TextFormz averageBed, TextFormz selectedOption, TextFormz description, FormzSubmissionStatus status, String errorMessage, bool isValide
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
@pragma('vm:prefer-inline') @override $Res call({Object? roomNumber = null,Object? averageBed = null,Object? selectedOption = null,Object? description = null,Object? status = null,Object? errorMessage = null,Object? isValide = null,}) {
  return _then(_self.copyWith(
roomNumber: null == roomNumber ? _self.roomNumber : roomNumber // ignore: cast_nullable_to_non_nullable
as TextFormz,averageBed: null == averageBed ? _self.averageBed : averageBed // ignore: cast_nullable_to_non_nullable
as TextFormz,selectedOption: null == selectedOption ? _self.selectedOption : selectedOption // ignore: cast_nullable_to_non_nullable
as TextFormz,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TextFormz roomNumber,  TextFormz averageBed,  TextFormz selectedOption,  TextFormz description,  FormzSubmissionStatus status,  String errorMessage,  bool isValide)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateCompteHbState() when $default != null:
return $default(_that.roomNumber,_that.averageBed,_that.selectedOption,_that.description,_that.status,_that.errorMessage,_that.isValide);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TextFormz roomNumber,  TextFormz averageBed,  TextFormz selectedOption,  TextFormz description,  FormzSubmissionStatus status,  String errorMessage,  bool isValide)  $default,) {final _that = this;
switch (_that) {
case _CreateCompteHbState():
return $default(_that.roomNumber,_that.averageBed,_that.selectedOption,_that.description,_that.status,_that.errorMessage,_that.isValide);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TextFormz roomNumber,  TextFormz averageBed,  TextFormz selectedOption,  TextFormz description,  FormzSubmissionStatus status,  String errorMessage,  bool isValide)?  $default,) {final _that = this;
switch (_that) {
case _CreateCompteHbState() when $default != null:
return $default(_that.roomNumber,_that.averageBed,_that.selectedOption,_that.description,_that.status,_that.errorMessage,_that.isValide);case _:
  return null;

}
}

}

/// @nodoc


class _CreateCompteHbState implements CreateCompteHbState {
  const _CreateCompteHbState({required this.roomNumber, required this.averageBed, required this.selectedOption, required this.description, required this.status, required this.errorMessage, required this.isValide});
  

@override final  TextFormz roomNumber;
@override final  TextFormz averageBed;
@override final  TextFormz selectedOption;
@override final  TextFormz description;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateCompteHbState&&(identical(other.roomNumber, roomNumber) || other.roomNumber == roomNumber)&&(identical(other.averageBed, averageBed) || other.averageBed == averageBed)&&(identical(other.selectedOption, selectedOption) || other.selectedOption == selectedOption)&&(identical(other.description, description) || other.description == description)&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isValide, isValide) || other.isValide == isValide));
}


@override
int get hashCode => Object.hash(runtimeType,roomNumber,averageBed,selectedOption,description,status,errorMessage,isValide);

@override
String toString() {
  return 'CreateCompteHbState(roomNumber: $roomNumber, averageBed: $averageBed, selectedOption: $selectedOption, description: $description, status: $status, errorMessage: $errorMessage, isValide: $isValide)';
}


}

/// @nodoc
abstract mixin class _$CreateCompteHbStateCopyWith<$Res> implements $CreateCompteHbStateCopyWith<$Res> {
  factory _$CreateCompteHbStateCopyWith(_CreateCompteHbState value, $Res Function(_CreateCompteHbState) _then) = __$CreateCompteHbStateCopyWithImpl;
@override @useResult
$Res call({
 TextFormz roomNumber, TextFormz averageBed, TextFormz selectedOption, TextFormz description, FormzSubmissionStatus status, String errorMessage, bool isValide
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
@override @pragma('vm:prefer-inline') $Res call({Object? roomNumber = null,Object? averageBed = null,Object? selectedOption = null,Object? description = null,Object? status = null,Object? errorMessage = null,Object? isValide = null,}) {
  return _then(_CreateCompteHbState(
roomNumber: null == roomNumber ? _self.roomNumber : roomNumber // ignore: cast_nullable_to_non_nullable
as TextFormz,averageBed: null == averageBed ? _self.averageBed : averageBed // ignore: cast_nullable_to_non_nullable
as TextFormz,selectedOption: null == selectedOption ? _self.selectedOption : selectedOption // ignore: cast_nullable_to_non_nullable
as TextFormz,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as TextFormz,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FormzSubmissionStatus,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,isValide: null == isValide ? _self.isValide : isValide // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
