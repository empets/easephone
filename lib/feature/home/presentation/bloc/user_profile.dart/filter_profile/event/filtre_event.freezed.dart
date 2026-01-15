// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filtre_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FiltreEvent {

 bool get filterIsActif; String get adresse;
/// Create a copy of FiltreEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FiltreEventCopyWith<FiltreEvent> get copyWith => _$FiltreEventCopyWithImpl<FiltreEvent>(this as FiltreEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FiltreEvent&&(identical(other.filterIsActif, filterIsActif) || other.filterIsActif == filterIsActif)&&(identical(other.adresse, adresse) || other.adresse == adresse));
}


@override
int get hashCode => Object.hash(runtimeType,filterIsActif,adresse);

@override
String toString() {
  return 'FiltreEvent(filterIsActif: $filterIsActif, adresse: $adresse)';
}


}

/// @nodoc
abstract mixin class $FiltreEventCopyWith<$Res>  {
  factory $FiltreEventCopyWith(FiltreEvent value, $Res Function(FiltreEvent) _then) = _$FiltreEventCopyWithImpl;
@useResult
$Res call({
 bool filterIsActif, String adresse
});




}
/// @nodoc
class _$FiltreEventCopyWithImpl<$Res>
    implements $FiltreEventCopyWith<$Res> {
  _$FiltreEventCopyWithImpl(this._self, this._then);

  final FiltreEvent _self;
  final $Res Function(FiltreEvent) _then;

/// Create a copy of FiltreEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? filterIsActif = null,Object? adresse = null,}) {
  return _then(_self.copyWith(
filterIsActif: null == filterIsActif ? _self.filterIsActif : filterIsActif // ignore: cast_nullable_to_non_nullable
as bool,adresse: null == adresse ? _self.adresse : adresse // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [FiltreEvent].
extension FiltreEventPatterns on FiltreEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FilterFiltreEvent value)?  filtre,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FilterFiltreEvent() when filtre != null:
return filtre(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FilterFiltreEvent value)  filtre,}){
final _that = this;
switch (_that) {
case FilterFiltreEvent():
return filtre(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FilterFiltreEvent value)?  filtre,}){
final _that = this;
switch (_that) {
case FilterFiltreEvent() when filtre != null:
return filtre(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool filterIsActif,  String adresse)?  filtre,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FilterFiltreEvent() when filtre != null:
return filtre(_that.filterIsActif,_that.adresse);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool filterIsActif,  String adresse)  filtre,}) {final _that = this;
switch (_that) {
case FilterFiltreEvent():
return filtre(_that.filterIsActif,_that.adresse);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool filterIsActif,  String adresse)?  filtre,}) {final _that = this;
switch (_that) {
case FilterFiltreEvent() when filtre != null:
return filtre(_that.filterIsActif,_that.adresse);case _:
  return null;

}
}

}

/// @nodoc


class FilterFiltreEvent implements FiltreEvent {
   FilterFiltreEvent({required this.filterIsActif, required this.adresse});
  

@override final  bool filterIsActif;
@override final  String adresse;

/// Create a copy of FiltreEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FilterFiltreEventCopyWith<FilterFiltreEvent> get copyWith => _$FilterFiltreEventCopyWithImpl<FilterFiltreEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FilterFiltreEvent&&(identical(other.filterIsActif, filterIsActif) || other.filterIsActif == filterIsActif)&&(identical(other.adresse, adresse) || other.adresse == adresse));
}


@override
int get hashCode => Object.hash(runtimeType,filterIsActif,adresse);

@override
String toString() {
  return 'FiltreEvent.filtre(filterIsActif: $filterIsActif, adresse: $adresse)';
}


}

/// @nodoc
abstract mixin class $FilterFiltreEventCopyWith<$Res> implements $FiltreEventCopyWith<$Res> {
  factory $FilterFiltreEventCopyWith(FilterFiltreEvent value, $Res Function(FilterFiltreEvent) _then) = _$FilterFiltreEventCopyWithImpl;
@override @useResult
$Res call({
 bool filterIsActif, String adresse
});




}
/// @nodoc
class _$FilterFiltreEventCopyWithImpl<$Res>
    implements $FilterFiltreEventCopyWith<$Res> {
  _$FilterFiltreEventCopyWithImpl(this._self, this._then);

  final FilterFiltreEvent _self;
  final $Res Function(FilterFiltreEvent) _then;

/// Create a copy of FiltreEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? filterIsActif = null,Object? adresse = null,}) {
  return _then(FilterFiltreEvent(
filterIsActif: null == filterIsActif ? _self.filterIsActif : filterIsActif // ignore: cast_nullable_to_non_nullable
as bool,adresse: null == adresse ? _self.adresse : adresse // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
