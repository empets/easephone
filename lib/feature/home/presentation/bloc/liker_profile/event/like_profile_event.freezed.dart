// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'like_profile_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LikeProfileEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LikeProfileEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LikeProfileEvent()';
}


}

/// @nodoc
class $LikeProfileEventCopyWith<$Res>  {
$LikeProfileEventCopyWith(LikeProfileEvent _, $Res Function(LikeProfileEvent) __);
}


/// Adds pattern-matching-related methods to [LikeProfileEvent].
extension LikeProfileEventPatterns on LikeProfileEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LikeProfileProfileEvent value)?  likeProfile,TResult Function( DisLikeProfileProfileEvent value)?  disLikeProfile,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LikeProfileProfileEvent() when likeProfile != null:
return likeProfile(_that);case DisLikeProfileProfileEvent() when disLikeProfile != null:
return disLikeProfile(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LikeProfileProfileEvent value)  likeProfile,required TResult Function( DisLikeProfileProfileEvent value)  disLikeProfile,}){
final _that = this;
switch (_that) {
case LikeProfileProfileEvent():
return likeProfile(_that);case DisLikeProfileProfileEvent():
return disLikeProfile(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LikeProfileProfileEvent value)?  likeProfile,TResult? Function( DisLikeProfileProfileEvent value)?  disLikeProfile,}){
final _that = this;
switch (_that) {
case LikeProfileProfileEvent() when likeProfile != null:
return likeProfile(_that);case DisLikeProfileProfileEvent() when disLikeProfile != null:
return disLikeProfile(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool? like)?  likeProfile,TResult Function( bool? disLike)?  disLikeProfile,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LikeProfileProfileEvent() when likeProfile != null:
return likeProfile(_that.like);case DisLikeProfileProfileEvent() when disLikeProfile != null:
return disLikeProfile(_that.disLike);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool? like)  likeProfile,required TResult Function( bool? disLike)  disLikeProfile,}) {final _that = this;
switch (_that) {
case LikeProfileProfileEvent():
return likeProfile(_that.like);case DisLikeProfileProfileEvent():
return disLikeProfile(_that.disLike);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool? like)?  likeProfile,TResult? Function( bool? disLike)?  disLikeProfile,}) {final _that = this;
switch (_that) {
case LikeProfileProfileEvent() when likeProfile != null:
return likeProfile(_that.like);case DisLikeProfileProfileEvent() when disLikeProfile != null:
return disLikeProfile(_that.disLike);case _:
  return null;

}
}

}

/// @nodoc


class LikeProfileProfileEvent implements LikeProfileEvent {
   LikeProfileProfileEvent({this.like});
  

 final  bool? like;

/// Create a copy of LikeProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LikeProfileProfileEventCopyWith<LikeProfileProfileEvent> get copyWith => _$LikeProfileProfileEventCopyWithImpl<LikeProfileProfileEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LikeProfileProfileEvent&&(identical(other.like, like) || other.like == like));
}


@override
int get hashCode => Object.hash(runtimeType,like);

@override
String toString() {
  return 'LikeProfileEvent.likeProfile(like: $like)';
}


}

/// @nodoc
abstract mixin class $LikeProfileProfileEventCopyWith<$Res> implements $LikeProfileEventCopyWith<$Res> {
  factory $LikeProfileProfileEventCopyWith(LikeProfileProfileEvent value, $Res Function(LikeProfileProfileEvent) _then) = _$LikeProfileProfileEventCopyWithImpl;
@useResult
$Res call({
 bool? like
});




}
/// @nodoc
class _$LikeProfileProfileEventCopyWithImpl<$Res>
    implements $LikeProfileProfileEventCopyWith<$Res> {
  _$LikeProfileProfileEventCopyWithImpl(this._self, this._then);

  final LikeProfileProfileEvent _self;
  final $Res Function(LikeProfileProfileEvent) _then;

/// Create a copy of LikeProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? like = freezed,}) {
  return _then(LikeProfileProfileEvent(
like: freezed == like ? _self.like : like // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

/// @nodoc


class DisLikeProfileProfileEvent implements LikeProfileEvent {
   DisLikeProfileProfileEvent({this.disLike});
  

 final  bool? disLike;

/// Create a copy of LikeProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DisLikeProfileProfileEventCopyWith<DisLikeProfileProfileEvent> get copyWith => _$DisLikeProfileProfileEventCopyWithImpl<DisLikeProfileProfileEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DisLikeProfileProfileEvent&&(identical(other.disLike, disLike) || other.disLike == disLike));
}


@override
int get hashCode => Object.hash(runtimeType,disLike);

@override
String toString() {
  return 'LikeProfileEvent.disLikeProfile(disLike: $disLike)';
}


}

/// @nodoc
abstract mixin class $DisLikeProfileProfileEventCopyWith<$Res> implements $LikeProfileEventCopyWith<$Res> {
  factory $DisLikeProfileProfileEventCopyWith(DisLikeProfileProfileEvent value, $Res Function(DisLikeProfileProfileEvent) _then) = _$DisLikeProfileProfileEventCopyWithImpl;
@useResult
$Res call({
 bool? disLike
});




}
/// @nodoc
class _$DisLikeProfileProfileEventCopyWithImpl<$Res>
    implements $DisLikeProfileProfileEventCopyWith<$Res> {
  _$DisLikeProfileProfileEventCopyWithImpl(this._self, this._then);

  final DisLikeProfileProfileEvent _self;
  final $Res Function(DisLikeProfileProfileEvent) _then;

/// Create a copy of LikeProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? disLike = freezed,}) {
  return _then(DisLikeProfileProfileEvent(
disLike: freezed == disLike ? _self.disLike : disLike // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
