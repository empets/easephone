// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_compte_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateCompteEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateCompteEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateCompteEvent()';
}


}

/// @nodoc
class $CreateCompteEventCopyWith<$Res>  {
$CreateCompteEventCopyWith(CreateCompteEvent _, $Res Function(CreateCompteEvent) __);
}


/// Adds pattern-matching-related methods to [CreateCompteEvent].
extension CreateCompteEventPatterns on CreateCompteEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ChangeResidenceNameCreateCompteEvent value)?  changeResidenceName,TResult Function( ChangeSpecialiteCreateCompteEvent value)?  changeSpecialite,TResult Function( ChangeTelephoneCreateCompteEvent value)?  changeTelephone,TResult Function( ChangeAdresseCreateCompteEvent value)?  changeAdresse,TResult Function( SubmitCreateCompteEvent value)?  submit,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ChangeResidenceNameCreateCompteEvent() when changeResidenceName != null:
return changeResidenceName(_that);case ChangeSpecialiteCreateCompteEvent() when changeSpecialite != null:
return changeSpecialite(_that);case ChangeTelephoneCreateCompteEvent() when changeTelephone != null:
return changeTelephone(_that);case ChangeAdresseCreateCompteEvent() when changeAdresse != null:
return changeAdresse(_that);case SubmitCreateCompteEvent() when submit != null:
return submit(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ChangeResidenceNameCreateCompteEvent value)  changeResidenceName,required TResult Function( ChangeSpecialiteCreateCompteEvent value)  changeSpecialite,required TResult Function( ChangeTelephoneCreateCompteEvent value)  changeTelephone,required TResult Function( ChangeAdresseCreateCompteEvent value)  changeAdresse,required TResult Function( SubmitCreateCompteEvent value)  submit,}){
final _that = this;
switch (_that) {
case ChangeResidenceNameCreateCompteEvent():
return changeResidenceName(_that);case ChangeSpecialiteCreateCompteEvent():
return changeSpecialite(_that);case ChangeTelephoneCreateCompteEvent():
return changeTelephone(_that);case ChangeAdresseCreateCompteEvent():
return changeAdresse(_that);case SubmitCreateCompteEvent():
return submit(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ChangeResidenceNameCreateCompteEvent value)?  changeResidenceName,TResult? Function( ChangeSpecialiteCreateCompteEvent value)?  changeSpecialite,TResult? Function( ChangeTelephoneCreateCompteEvent value)?  changeTelephone,TResult? Function( ChangeAdresseCreateCompteEvent value)?  changeAdresse,TResult? Function( SubmitCreateCompteEvent value)?  submit,}){
final _that = this;
switch (_that) {
case ChangeResidenceNameCreateCompteEvent() when changeResidenceName != null:
return changeResidenceName(_that);case ChangeSpecialiteCreateCompteEvent() when changeSpecialite != null:
return changeSpecialite(_that);case ChangeTelephoneCreateCompteEvent() when changeTelephone != null:
return changeTelephone(_that);case ChangeAdresseCreateCompteEvent() when changeAdresse != null:
return changeAdresse(_that);case SubmitCreateCompteEvent() when submit != null:
return submit(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String name)?  changeResidenceName,TResult Function( String specialite)?  changeSpecialite,TResult Function( String telephone)?  changeTelephone,TResult Function( String adresse)?  changeAdresse,TResult Function()?  submit,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ChangeResidenceNameCreateCompteEvent() when changeResidenceName != null:
return changeResidenceName(_that.name);case ChangeSpecialiteCreateCompteEvent() when changeSpecialite != null:
return changeSpecialite(_that.specialite);case ChangeTelephoneCreateCompteEvent() when changeTelephone != null:
return changeTelephone(_that.telephone);case ChangeAdresseCreateCompteEvent() when changeAdresse != null:
return changeAdresse(_that.adresse);case SubmitCreateCompteEvent() when submit != null:
return submit();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String name)  changeResidenceName,required TResult Function( String specialite)  changeSpecialite,required TResult Function( String telephone)  changeTelephone,required TResult Function( String adresse)  changeAdresse,required TResult Function()  submit,}) {final _that = this;
switch (_that) {
case ChangeResidenceNameCreateCompteEvent():
return changeResidenceName(_that.name);case ChangeSpecialiteCreateCompteEvent():
return changeSpecialite(_that.specialite);case ChangeTelephoneCreateCompteEvent():
return changeTelephone(_that.telephone);case ChangeAdresseCreateCompteEvent():
return changeAdresse(_that.adresse);case SubmitCreateCompteEvent():
return submit();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String name)?  changeResidenceName,TResult? Function( String specialite)?  changeSpecialite,TResult? Function( String telephone)?  changeTelephone,TResult? Function( String adresse)?  changeAdresse,TResult? Function()?  submit,}) {final _that = this;
switch (_that) {
case ChangeResidenceNameCreateCompteEvent() when changeResidenceName != null:
return changeResidenceName(_that.name);case ChangeSpecialiteCreateCompteEvent() when changeSpecialite != null:
return changeSpecialite(_that.specialite);case ChangeTelephoneCreateCompteEvent() when changeTelephone != null:
return changeTelephone(_that.telephone);case ChangeAdresseCreateCompteEvent() when changeAdresse != null:
return changeAdresse(_that.adresse);case SubmitCreateCompteEvent() when submit != null:
return submit();case _:
  return null;

}
}

}

/// @nodoc


class ChangeResidenceNameCreateCompteEvent implements CreateCompteEvent {
  const ChangeResidenceNameCreateCompteEvent(this.name);
  

 final  String name;

/// Create a copy of CreateCompteEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeResidenceNameCreateCompteEventCopyWith<ChangeResidenceNameCreateCompteEvent> get copyWith => _$ChangeResidenceNameCreateCompteEventCopyWithImpl<ChangeResidenceNameCreateCompteEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeResidenceNameCreateCompteEvent&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'CreateCompteEvent.changeResidenceName(name: $name)';
}


}

/// @nodoc
abstract mixin class $ChangeResidenceNameCreateCompteEventCopyWith<$Res> implements $CreateCompteEventCopyWith<$Res> {
  factory $ChangeResidenceNameCreateCompteEventCopyWith(ChangeResidenceNameCreateCompteEvent value, $Res Function(ChangeResidenceNameCreateCompteEvent) _then) = _$ChangeResidenceNameCreateCompteEventCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$ChangeResidenceNameCreateCompteEventCopyWithImpl<$Res>
    implements $ChangeResidenceNameCreateCompteEventCopyWith<$Res> {
  _$ChangeResidenceNameCreateCompteEventCopyWithImpl(this._self, this._then);

  final ChangeResidenceNameCreateCompteEvent _self;
  final $Res Function(ChangeResidenceNameCreateCompteEvent) _then;

/// Create a copy of CreateCompteEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(ChangeResidenceNameCreateCompteEvent(
null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ChangeSpecialiteCreateCompteEvent implements CreateCompteEvent {
  const ChangeSpecialiteCreateCompteEvent(this.specialite);
  

 final  String specialite;

/// Create a copy of CreateCompteEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeSpecialiteCreateCompteEventCopyWith<ChangeSpecialiteCreateCompteEvent> get copyWith => _$ChangeSpecialiteCreateCompteEventCopyWithImpl<ChangeSpecialiteCreateCompteEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeSpecialiteCreateCompteEvent&&(identical(other.specialite, specialite) || other.specialite == specialite));
}


@override
int get hashCode => Object.hash(runtimeType,specialite);

@override
String toString() {
  return 'CreateCompteEvent.changeSpecialite(specialite: $specialite)';
}


}

/// @nodoc
abstract mixin class $ChangeSpecialiteCreateCompteEventCopyWith<$Res> implements $CreateCompteEventCopyWith<$Res> {
  factory $ChangeSpecialiteCreateCompteEventCopyWith(ChangeSpecialiteCreateCompteEvent value, $Res Function(ChangeSpecialiteCreateCompteEvent) _then) = _$ChangeSpecialiteCreateCompteEventCopyWithImpl;
@useResult
$Res call({
 String specialite
});




}
/// @nodoc
class _$ChangeSpecialiteCreateCompteEventCopyWithImpl<$Res>
    implements $ChangeSpecialiteCreateCompteEventCopyWith<$Res> {
  _$ChangeSpecialiteCreateCompteEventCopyWithImpl(this._self, this._then);

  final ChangeSpecialiteCreateCompteEvent _self;
  final $Res Function(ChangeSpecialiteCreateCompteEvent) _then;

/// Create a copy of CreateCompteEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? specialite = null,}) {
  return _then(ChangeSpecialiteCreateCompteEvent(
null == specialite ? _self.specialite : specialite // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ChangeTelephoneCreateCompteEvent implements CreateCompteEvent {
  const ChangeTelephoneCreateCompteEvent(this.telephone);
  

 final  String telephone;

/// Create a copy of CreateCompteEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeTelephoneCreateCompteEventCopyWith<ChangeTelephoneCreateCompteEvent> get copyWith => _$ChangeTelephoneCreateCompteEventCopyWithImpl<ChangeTelephoneCreateCompteEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeTelephoneCreateCompteEvent&&(identical(other.telephone, telephone) || other.telephone == telephone));
}


@override
int get hashCode => Object.hash(runtimeType,telephone);

@override
String toString() {
  return 'CreateCompteEvent.changeTelephone(telephone: $telephone)';
}


}

/// @nodoc
abstract mixin class $ChangeTelephoneCreateCompteEventCopyWith<$Res> implements $CreateCompteEventCopyWith<$Res> {
  factory $ChangeTelephoneCreateCompteEventCopyWith(ChangeTelephoneCreateCompteEvent value, $Res Function(ChangeTelephoneCreateCompteEvent) _then) = _$ChangeTelephoneCreateCompteEventCopyWithImpl;
@useResult
$Res call({
 String telephone
});




}
/// @nodoc
class _$ChangeTelephoneCreateCompteEventCopyWithImpl<$Res>
    implements $ChangeTelephoneCreateCompteEventCopyWith<$Res> {
  _$ChangeTelephoneCreateCompteEventCopyWithImpl(this._self, this._then);

  final ChangeTelephoneCreateCompteEvent _self;
  final $Res Function(ChangeTelephoneCreateCompteEvent) _then;

/// Create a copy of CreateCompteEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? telephone = null,}) {
  return _then(ChangeTelephoneCreateCompteEvent(
null == telephone ? _self.telephone : telephone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ChangeAdresseCreateCompteEvent implements CreateCompteEvent {
  const ChangeAdresseCreateCompteEvent(this.adresse);
  

 final  String adresse;

/// Create a copy of CreateCompteEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeAdresseCreateCompteEventCopyWith<ChangeAdresseCreateCompteEvent> get copyWith => _$ChangeAdresseCreateCompteEventCopyWithImpl<ChangeAdresseCreateCompteEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeAdresseCreateCompteEvent&&(identical(other.adresse, adresse) || other.adresse == adresse));
}


@override
int get hashCode => Object.hash(runtimeType,adresse);

@override
String toString() {
  return 'CreateCompteEvent.changeAdresse(adresse: $adresse)';
}


}

/// @nodoc
abstract mixin class $ChangeAdresseCreateCompteEventCopyWith<$Res> implements $CreateCompteEventCopyWith<$Res> {
  factory $ChangeAdresseCreateCompteEventCopyWith(ChangeAdresseCreateCompteEvent value, $Res Function(ChangeAdresseCreateCompteEvent) _then) = _$ChangeAdresseCreateCompteEventCopyWithImpl;
@useResult
$Res call({
 String adresse
});




}
/// @nodoc
class _$ChangeAdresseCreateCompteEventCopyWithImpl<$Res>
    implements $ChangeAdresseCreateCompteEventCopyWith<$Res> {
  _$ChangeAdresseCreateCompteEventCopyWithImpl(this._self, this._then);

  final ChangeAdresseCreateCompteEvent _self;
  final $Res Function(ChangeAdresseCreateCompteEvent) _then;

/// Create a copy of CreateCompteEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? adresse = null,}) {
  return _then(ChangeAdresseCreateCompteEvent(
null == adresse ? _self.adresse : adresse // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SubmitCreateCompteEvent implements CreateCompteEvent {
  const SubmitCreateCompteEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitCreateCompteEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateCompteEvent.submit()';
}


}




/// @nodoc
mixin _$CreateCompteHebEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateCompteHebEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateCompteHebEvent()';
}


}

/// @nodoc
class $CreateCompteHebEventCopyWith<$Res>  {
$CreateCompteHebEventCopyWith(CreateCompteHebEvent _, $Res Function(CreateCompteHebEvent) __);
}


/// Adds pattern-matching-related methods to [CreateCompteHebEvent].
extension CreateCompteHebEventPatterns on CreateCompteHebEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ChangeRoomNumberCreateCompteHebEvent value)?  changeRoomNumber,TResult Function( ChangeAverageBedCreateCompteHebEvent value)?  changeAverageBed,TResult Function( ChangeSelectedOptionCreateCompteHebEvent value)?  changeSelectedOption,TResult Function( ChangeDescriptionCreateCompteHebEvent value)?  changeDescription,TResult Function( SubmitCreateCompteHebEvent value)?  submit,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ChangeRoomNumberCreateCompteHebEvent() when changeRoomNumber != null:
return changeRoomNumber(_that);case ChangeAverageBedCreateCompteHebEvent() when changeAverageBed != null:
return changeAverageBed(_that);case ChangeSelectedOptionCreateCompteHebEvent() when changeSelectedOption != null:
return changeSelectedOption(_that);case ChangeDescriptionCreateCompteHebEvent() when changeDescription != null:
return changeDescription(_that);case SubmitCreateCompteHebEvent() when submit != null:
return submit(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ChangeRoomNumberCreateCompteHebEvent value)  changeRoomNumber,required TResult Function( ChangeAverageBedCreateCompteHebEvent value)  changeAverageBed,required TResult Function( ChangeSelectedOptionCreateCompteHebEvent value)  changeSelectedOption,required TResult Function( ChangeDescriptionCreateCompteHebEvent value)  changeDescription,required TResult Function( SubmitCreateCompteHebEvent value)  submit,}){
final _that = this;
switch (_that) {
case ChangeRoomNumberCreateCompteHebEvent():
return changeRoomNumber(_that);case ChangeAverageBedCreateCompteHebEvent():
return changeAverageBed(_that);case ChangeSelectedOptionCreateCompteHebEvent():
return changeSelectedOption(_that);case ChangeDescriptionCreateCompteHebEvent():
return changeDescription(_that);case SubmitCreateCompteHebEvent():
return submit(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ChangeRoomNumberCreateCompteHebEvent value)?  changeRoomNumber,TResult? Function( ChangeAverageBedCreateCompteHebEvent value)?  changeAverageBed,TResult? Function( ChangeSelectedOptionCreateCompteHebEvent value)?  changeSelectedOption,TResult? Function( ChangeDescriptionCreateCompteHebEvent value)?  changeDescription,TResult? Function( SubmitCreateCompteHebEvent value)?  submit,}){
final _that = this;
switch (_that) {
case ChangeRoomNumberCreateCompteHebEvent() when changeRoomNumber != null:
return changeRoomNumber(_that);case ChangeAverageBedCreateCompteHebEvent() when changeAverageBed != null:
return changeAverageBed(_that);case ChangeSelectedOptionCreateCompteHebEvent() when changeSelectedOption != null:
return changeSelectedOption(_that);case ChangeDescriptionCreateCompteHebEvent() when changeDescription != null:
return changeDescription(_that);case SubmitCreateCompteHebEvent() when submit != null:
return submit(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String roomNumber)?  changeRoomNumber,TResult Function( String averageBed)?  changeAverageBed,TResult Function( String option)?  changeSelectedOption,TResult Function( String description)?  changeDescription,TResult Function()?  submit,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ChangeRoomNumberCreateCompteHebEvent() when changeRoomNumber != null:
return changeRoomNumber(_that.roomNumber);case ChangeAverageBedCreateCompteHebEvent() when changeAverageBed != null:
return changeAverageBed(_that.averageBed);case ChangeSelectedOptionCreateCompteHebEvent() when changeSelectedOption != null:
return changeSelectedOption(_that.option);case ChangeDescriptionCreateCompteHebEvent() when changeDescription != null:
return changeDescription(_that.description);case SubmitCreateCompteHebEvent() when submit != null:
return submit();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String roomNumber)  changeRoomNumber,required TResult Function( String averageBed)  changeAverageBed,required TResult Function( String option)  changeSelectedOption,required TResult Function( String description)  changeDescription,required TResult Function()  submit,}) {final _that = this;
switch (_that) {
case ChangeRoomNumberCreateCompteHebEvent():
return changeRoomNumber(_that.roomNumber);case ChangeAverageBedCreateCompteHebEvent():
return changeAverageBed(_that.averageBed);case ChangeSelectedOptionCreateCompteHebEvent():
return changeSelectedOption(_that.option);case ChangeDescriptionCreateCompteHebEvent():
return changeDescription(_that.description);case SubmitCreateCompteHebEvent():
return submit();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String roomNumber)?  changeRoomNumber,TResult? Function( String averageBed)?  changeAverageBed,TResult? Function( String option)?  changeSelectedOption,TResult? Function( String description)?  changeDescription,TResult? Function()?  submit,}) {final _that = this;
switch (_that) {
case ChangeRoomNumberCreateCompteHebEvent() when changeRoomNumber != null:
return changeRoomNumber(_that.roomNumber);case ChangeAverageBedCreateCompteHebEvent() when changeAverageBed != null:
return changeAverageBed(_that.averageBed);case ChangeSelectedOptionCreateCompteHebEvent() when changeSelectedOption != null:
return changeSelectedOption(_that.option);case ChangeDescriptionCreateCompteHebEvent() when changeDescription != null:
return changeDescription(_that.description);case SubmitCreateCompteHebEvent() when submit != null:
return submit();case _:
  return null;

}
}

}

/// @nodoc


class ChangeRoomNumberCreateCompteHebEvent implements CreateCompteHebEvent {
   ChangeRoomNumberCreateCompteHebEvent(this.roomNumber);
  

 final  String roomNumber;

/// Create a copy of CreateCompteHebEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeRoomNumberCreateCompteHebEventCopyWith<ChangeRoomNumberCreateCompteHebEvent> get copyWith => _$ChangeRoomNumberCreateCompteHebEventCopyWithImpl<ChangeRoomNumberCreateCompteHebEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeRoomNumberCreateCompteHebEvent&&(identical(other.roomNumber, roomNumber) || other.roomNumber == roomNumber));
}


@override
int get hashCode => Object.hash(runtimeType,roomNumber);

@override
String toString() {
  return 'CreateCompteHebEvent.changeRoomNumber(roomNumber: $roomNumber)';
}


}

/// @nodoc
abstract mixin class $ChangeRoomNumberCreateCompteHebEventCopyWith<$Res> implements $CreateCompteHebEventCopyWith<$Res> {
  factory $ChangeRoomNumberCreateCompteHebEventCopyWith(ChangeRoomNumberCreateCompteHebEvent value, $Res Function(ChangeRoomNumberCreateCompteHebEvent) _then) = _$ChangeRoomNumberCreateCompteHebEventCopyWithImpl;
@useResult
$Res call({
 String roomNumber
});




}
/// @nodoc
class _$ChangeRoomNumberCreateCompteHebEventCopyWithImpl<$Res>
    implements $ChangeRoomNumberCreateCompteHebEventCopyWith<$Res> {
  _$ChangeRoomNumberCreateCompteHebEventCopyWithImpl(this._self, this._then);

  final ChangeRoomNumberCreateCompteHebEvent _self;
  final $Res Function(ChangeRoomNumberCreateCompteHebEvent) _then;

/// Create a copy of CreateCompteHebEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? roomNumber = null,}) {
  return _then(ChangeRoomNumberCreateCompteHebEvent(
null == roomNumber ? _self.roomNumber : roomNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ChangeAverageBedCreateCompteHebEvent implements CreateCompteHebEvent {
   ChangeAverageBedCreateCompteHebEvent(this.averageBed);
  

 final  String averageBed;

/// Create a copy of CreateCompteHebEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeAverageBedCreateCompteHebEventCopyWith<ChangeAverageBedCreateCompteHebEvent> get copyWith => _$ChangeAverageBedCreateCompteHebEventCopyWithImpl<ChangeAverageBedCreateCompteHebEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeAverageBedCreateCompteHebEvent&&(identical(other.averageBed, averageBed) || other.averageBed == averageBed));
}


@override
int get hashCode => Object.hash(runtimeType,averageBed);

@override
String toString() {
  return 'CreateCompteHebEvent.changeAverageBed(averageBed: $averageBed)';
}


}

/// @nodoc
abstract mixin class $ChangeAverageBedCreateCompteHebEventCopyWith<$Res> implements $CreateCompteHebEventCopyWith<$Res> {
  factory $ChangeAverageBedCreateCompteHebEventCopyWith(ChangeAverageBedCreateCompteHebEvent value, $Res Function(ChangeAverageBedCreateCompteHebEvent) _then) = _$ChangeAverageBedCreateCompteHebEventCopyWithImpl;
@useResult
$Res call({
 String averageBed
});




}
/// @nodoc
class _$ChangeAverageBedCreateCompteHebEventCopyWithImpl<$Res>
    implements $ChangeAverageBedCreateCompteHebEventCopyWith<$Res> {
  _$ChangeAverageBedCreateCompteHebEventCopyWithImpl(this._self, this._then);

  final ChangeAverageBedCreateCompteHebEvent _self;
  final $Res Function(ChangeAverageBedCreateCompteHebEvent) _then;

/// Create a copy of CreateCompteHebEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? averageBed = null,}) {
  return _then(ChangeAverageBedCreateCompteHebEvent(
null == averageBed ? _self.averageBed : averageBed // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ChangeSelectedOptionCreateCompteHebEvent implements CreateCompteHebEvent {
   ChangeSelectedOptionCreateCompteHebEvent(this.option);
  

 final  String option;

/// Create a copy of CreateCompteHebEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeSelectedOptionCreateCompteHebEventCopyWith<ChangeSelectedOptionCreateCompteHebEvent> get copyWith => _$ChangeSelectedOptionCreateCompteHebEventCopyWithImpl<ChangeSelectedOptionCreateCompteHebEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeSelectedOptionCreateCompteHebEvent&&(identical(other.option, option) || other.option == option));
}


@override
int get hashCode => Object.hash(runtimeType,option);

@override
String toString() {
  return 'CreateCompteHebEvent.changeSelectedOption(option: $option)';
}


}

/// @nodoc
abstract mixin class $ChangeSelectedOptionCreateCompteHebEventCopyWith<$Res> implements $CreateCompteHebEventCopyWith<$Res> {
  factory $ChangeSelectedOptionCreateCompteHebEventCopyWith(ChangeSelectedOptionCreateCompteHebEvent value, $Res Function(ChangeSelectedOptionCreateCompteHebEvent) _then) = _$ChangeSelectedOptionCreateCompteHebEventCopyWithImpl;
@useResult
$Res call({
 String option
});




}
/// @nodoc
class _$ChangeSelectedOptionCreateCompteHebEventCopyWithImpl<$Res>
    implements $ChangeSelectedOptionCreateCompteHebEventCopyWith<$Res> {
  _$ChangeSelectedOptionCreateCompteHebEventCopyWithImpl(this._self, this._then);

  final ChangeSelectedOptionCreateCompteHebEvent _self;
  final $Res Function(ChangeSelectedOptionCreateCompteHebEvent) _then;

/// Create a copy of CreateCompteHebEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? option = null,}) {
  return _then(ChangeSelectedOptionCreateCompteHebEvent(
null == option ? _self.option : option // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ChangeDescriptionCreateCompteHebEvent implements CreateCompteHebEvent {
   ChangeDescriptionCreateCompteHebEvent(this.description);
  

 final  String description;

/// Create a copy of CreateCompteHebEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeDescriptionCreateCompteHebEventCopyWith<ChangeDescriptionCreateCompteHebEvent> get copyWith => _$ChangeDescriptionCreateCompteHebEventCopyWithImpl<ChangeDescriptionCreateCompteHebEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeDescriptionCreateCompteHebEvent&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,description);

@override
String toString() {
  return 'CreateCompteHebEvent.changeDescription(description: $description)';
}


}

/// @nodoc
abstract mixin class $ChangeDescriptionCreateCompteHebEventCopyWith<$Res> implements $CreateCompteHebEventCopyWith<$Res> {
  factory $ChangeDescriptionCreateCompteHebEventCopyWith(ChangeDescriptionCreateCompteHebEvent value, $Res Function(ChangeDescriptionCreateCompteHebEvent) _then) = _$ChangeDescriptionCreateCompteHebEventCopyWithImpl;
@useResult
$Res call({
 String description
});




}
/// @nodoc
class _$ChangeDescriptionCreateCompteHebEventCopyWithImpl<$Res>
    implements $ChangeDescriptionCreateCompteHebEventCopyWith<$Res> {
  _$ChangeDescriptionCreateCompteHebEventCopyWithImpl(this._self, this._then);

  final ChangeDescriptionCreateCompteHebEvent _self;
  final $Res Function(ChangeDescriptionCreateCompteHebEvent) _then;

/// Create a copy of CreateCompteHebEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? description = null,}) {
  return _then(ChangeDescriptionCreateCompteHebEvent(
null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SubmitCreateCompteHebEvent implements CreateCompteHebEvent {
   SubmitCreateCompteHebEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitCreateCompteHebEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateCompteHebEvent.submit()';
}


}




// dart format on
