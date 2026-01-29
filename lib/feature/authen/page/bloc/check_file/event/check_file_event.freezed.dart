// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_file_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CheckFileEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckFileEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CheckFileEvent()';
}


}

/// @nodoc
class $CheckFileEventCopyWith<$Res>  {
$CheckFileEventCopyWith(CheckFileEvent _, $Res Function(CheckFileEvent) __);
}


/// Adds pattern-matching-related methods to [CheckFileEvent].
extension CheckFileEventPatterns on CheckFileEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ChangeGetRectoCheckFileEvent value)?  changeGetRecto,TResult Function( ChangeGetVersoCheckFileEvent value)?  changeGetVerso,TResult Function( SubmitCheckFileEvent value)?  submit,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ChangeGetRectoCheckFileEvent() when changeGetRecto != null:
return changeGetRecto(_that);case ChangeGetVersoCheckFileEvent() when changeGetVerso != null:
return changeGetVerso(_that);case SubmitCheckFileEvent() when submit != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ChangeGetRectoCheckFileEvent value)  changeGetRecto,required TResult Function( ChangeGetVersoCheckFileEvent value)  changeGetVerso,required TResult Function( SubmitCheckFileEvent value)  submit,}){
final _that = this;
switch (_that) {
case ChangeGetRectoCheckFileEvent():
return changeGetRecto(_that);case ChangeGetVersoCheckFileEvent():
return changeGetVerso(_that);case SubmitCheckFileEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ChangeGetRectoCheckFileEvent value)?  changeGetRecto,TResult? Function( ChangeGetVersoCheckFileEvent value)?  changeGetVerso,TResult? Function( SubmitCheckFileEvent value)?  submit,}){
final _that = this;
switch (_that) {
case ChangeGetRectoCheckFileEvent() when changeGetRecto != null:
return changeGetRecto(_that);case ChangeGetVersoCheckFileEvent() when changeGetVerso != null:
return changeGetVerso(_that);case SubmitCheckFileEvent() when submit != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String cniRecto)?  changeGetRecto,TResult Function( String cniVeso)?  changeGetVerso,TResult Function()?  submit,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ChangeGetRectoCheckFileEvent() when changeGetRecto != null:
return changeGetRecto(_that.cniRecto);case ChangeGetVersoCheckFileEvent() when changeGetVerso != null:
return changeGetVerso(_that.cniVeso);case SubmitCheckFileEvent() when submit != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String cniRecto)  changeGetRecto,required TResult Function( String cniVeso)  changeGetVerso,required TResult Function()  submit,}) {final _that = this;
switch (_that) {
case ChangeGetRectoCheckFileEvent():
return changeGetRecto(_that.cniRecto);case ChangeGetVersoCheckFileEvent():
return changeGetVerso(_that.cniVeso);case SubmitCheckFileEvent():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String cniRecto)?  changeGetRecto,TResult? Function( String cniVeso)?  changeGetVerso,TResult? Function()?  submit,}) {final _that = this;
switch (_that) {
case ChangeGetRectoCheckFileEvent() when changeGetRecto != null:
return changeGetRecto(_that.cniRecto);case ChangeGetVersoCheckFileEvent() when changeGetVerso != null:
return changeGetVerso(_that.cniVeso);case SubmitCheckFileEvent() when submit != null:
return submit();case _:
  return null;

}
}

}

/// @nodoc


class ChangeGetRectoCheckFileEvent implements CheckFileEvent {
   ChangeGetRectoCheckFileEvent(this.cniRecto);
  

 final  String cniRecto;

/// Create a copy of CheckFileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeGetRectoCheckFileEventCopyWith<ChangeGetRectoCheckFileEvent> get copyWith => _$ChangeGetRectoCheckFileEventCopyWithImpl<ChangeGetRectoCheckFileEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeGetRectoCheckFileEvent&&(identical(other.cniRecto, cniRecto) || other.cniRecto == cniRecto));
}


@override
int get hashCode => Object.hash(runtimeType,cniRecto);

@override
String toString() {
  return 'CheckFileEvent.changeGetRecto(cniRecto: $cniRecto)';
}


}

/// @nodoc
abstract mixin class $ChangeGetRectoCheckFileEventCopyWith<$Res> implements $CheckFileEventCopyWith<$Res> {
  factory $ChangeGetRectoCheckFileEventCopyWith(ChangeGetRectoCheckFileEvent value, $Res Function(ChangeGetRectoCheckFileEvent) _then) = _$ChangeGetRectoCheckFileEventCopyWithImpl;
@useResult
$Res call({
 String cniRecto
});




}
/// @nodoc
class _$ChangeGetRectoCheckFileEventCopyWithImpl<$Res>
    implements $ChangeGetRectoCheckFileEventCopyWith<$Res> {
  _$ChangeGetRectoCheckFileEventCopyWithImpl(this._self, this._then);

  final ChangeGetRectoCheckFileEvent _self;
  final $Res Function(ChangeGetRectoCheckFileEvent) _then;

/// Create a copy of CheckFileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cniRecto = null,}) {
  return _then(ChangeGetRectoCheckFileEvent(
null == cniRecto ? _self.cniRecto : cniRecto // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ChangeGetVersoCheckFileEvent implements CheckFileEvent {
   ChangeGetVersoCheckFileEvent(this.cniVeso);
  

 final  String cniVeso;

/// Create a copy of CheckFileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeGetVersoCheckFileEventCopyWith<ChangeGetVersoCheckFileEvent> get copyWith => _$ChangeGetVersoCheckFileEventCopyWithImpl<ChangeGetVersoCheckFileEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeGetVersoCheckFileEvent&&(identical(other.cniVeso, cniVeso) || other.cniVeso == cniVeso));
}


@override
int get hashCode => Object.hash(runtimeType,cniVeso);

@override
String toString() {
  return 'CheckFileEvent.changeGetVerso(cniVeso: $cniVeso)';
}


}

/// @nodoc
abstract mixin class $ChangeGetVersoCheckFileEventCopyWith<$Res> implements $CheckFileEventCopyWith<$Res> {
  factory $ChangeGetVersoCheckFileEventCopyWith(ChangeGetVersoCheckFileEvent value, $Res Function(ChangeGetVersoCheckFileEvent) _then) = _$ChangeGetVersoCheckFileEventCopyWithImpl;
@useResult
$Res call({
 String cniVeso
});




}
/// @nodoc
class _$ChangeGetVersoCheckFileEventCopyWithImpl<$Res>
    implements $ChangeGetVersoCheckFileEventCopyWith<$Res> {
  _$ChangeGetVersoCheckFileEventCopyWithImpl(this._self, this._then);

  final ChangeGetVersoCheckFileEvent _self;
  final $Res Function(ChangeGetVersoCheckFileEvent) _then;

/// Create a copy of CheckFileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cniVeso = null,}) {
  return _then(ChangeGetVersoCheckFileEvent(
null == cniVeso ? _self.cniVeso : cniVeso // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SubmitCheckFileEvent implements CheckFileEvent {
   SubmitCheckFileEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitCheckFileEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CheckFileEvent.submit()';
}


}




// dart format on
