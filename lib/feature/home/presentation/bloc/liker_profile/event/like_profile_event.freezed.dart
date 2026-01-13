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

 String? get userId;
/// Create a copy of LikeProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LikeProfileEventCopyWith<LikeProfileEvent> get copyWith => _$LikeProfileEventCopyWithImpl<LikeProfileEvent>(this as LikeProfileEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LikeProfileEvent&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'LikeProfileEvent(userId: $userId)';
}


}

/// @nodoc
abstract mixin class $LikeProfileEventCopyWith<$Res>  {
  factory $LikeProfileEventCopyWith(LikeProfileEvent value, $Res Function(LikeProfileEvent) _then) = _$LikeProfileEventCopyWithImpl;
@useResult
$Res call({
 String? userId
});




}
/// @nodoc
class _$LikeProfileEventCopyWithImpl<$Res>
    implements $LikeProfileEventCopyWith<$Res> {
  _$LikeProfileEventCopyWithImpl(this._self, this._then);

  final LikeProfileEvent _self;
  final $Res Function(LikeProfileEvent) _then;

/// Create a copy of LikeProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = freezed,}) {
  return _then(_self.copyWith(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool? like,  String? userId)?  likeProfile,TResult Function( bool? disLike,  String? userId)?  disLikeProfile,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LikeProfileProfileEvent() when likeProfile != null:
return likeProfile(_that.like,_that.userId);case DisLikeProfileProfileEvent() when disLikeProfile != null:
return disLikeProfile(_that.disLike,_that.userId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool? like,  String? userId)  likeProfile,required TResult Function( bool? disLike,  String? userId)  disLikeProfile,}) {final _that = this;
switch (_that) {
case LikeProfileProfileEvent():
return likeProfile(_that.like,_that.userId);case DisLikeProfileProfileEvent():
return disLikeProfile(_that.disLike,_that.userId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool? like,  String? userId)?  likeProfile,TResult? Function( bool? disLike,  String? userId)?  disLikeProfile,}) {final _that = this;
switch (_that) {
case LikeProfileProfileEvent() when likeProfile != null:
return likeProfile(_that.like,_that.userId);case DisLikeProfileProfileEvent() when disLikeProfile != null:
return disLikeProfile(_that.disLike,_that.userId);case _:
  return null;

}
}

}

/// @nodoc


class LikeProfileProfileEvent implements LikeProfileEvent {
   LikeProfileProfileEvent({this.like, this.userId});
  

 final  bool? like;
@override final  String? userId;

/// Create a copy of LikeProfileEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LikeProfileProfileEventCopyWith<LikeProfileProfileEvent> get copyWith => _$LikeProfileProfileEventCopyWithImpl<LikeProfileProfileEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LikeProfileProfileEvent&&(identical(other.like, like) || other.like == like)&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,like,userId);

@override
String toString() {
  return 'LikeProfileEvent.likeProfile(like: $like, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $LikeProfileProfileEventCopyWith<$Res> implements $LikeProfileEventCopyWith<$Res> {
  factory $LikeProfileProfileEventCopyWith(LikeProfileProfileEvent value, $Res Function(LikeProfileProfileEvent) _then) = _$LikeProfileProfileEventCopyWithImpl;
@override @useResult
$Res call({
 bool? like, String? userId
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
@override @pragma('vm:prefer-inline') $Res call({Object? like = freezed,Object? userId = freezed,}) {
  return _then(LikeProfileProfileEvent(
like: freezed == like ? _self.like : like // ignore: cast_nullable_to_non_nullable
as bool?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class DisLikeProfileProfileEvent implements LikeProfileEvent {
   DisLikeProfileProfileEvent({this.disLike, this.userId});
  

 final  bool? disLike;
@override final  String? userId;

/// Create a copy of LikeProfileEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DisLikeProfileProfileEventCopyWith<DisLikeProfileProfileEvent> get copyWith => _$DisLikeProfileProfileEventCopyWithImpl<DisLikeProfileProfileEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DisLikeProfileProfileEvent&&(identical(other.disLike, disLike) || other.disLike == disLike)&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,disLike,userId);

@override
String toString() {
  return 'LikeProfileEvent.disLikeProfile(disLike: $disLike, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $DisLikeProfileProfileEventCopyWith<$Res> implements $LikeProfileEventCopyWith<$Res> {
  factory $DisLikeProfileProfileEventCopyWith(DisLikeProfileProfileEvent value, $Res Function(DisLikeProfileProfileEvent) _then) = _$DisLikeProfileProfileEventCopyWithImpl;
@override @useResult
$Res call({
 bool? disLike, String? userId
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
@override @pragma('vm:prefer-inline') $Res call({Object? disLike = freezed,Object? userId = freezed,}) {
  return _then(DisLikeProfileProfileEvent(
disLike: freezed == disLike ? _self.disLike : disLike // ignore: cast_nullable_to_non_nullable
as bool?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
