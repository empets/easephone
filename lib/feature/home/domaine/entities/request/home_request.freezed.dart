// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
RequestLike _$RequestLikeFromJson(
  Map<String, dynamic> json
) {
    return _SRequestLike.fromJson(
      json
    );
}

/// @nodoc
mixin _$RequestLike {

 String get userId; int get compter; String get date; String? get likeId;
/// Create a copy of RequestLike
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestLikeCopyWith<RequestLike> get copyWith => _$RequestLikeCopyWithImpl<RequestLike>(this as RequestLike, _$identity);

  /// Serializes this RequestLike to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestLike&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.compter, compter) || other.compter == compter)&&(identical(other.date, date) || other.date == date)&&(identical(other.likeId, likeId) || other.likeId == likeId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,compter,date,likeId);

@override
String toString() {
  return 'RequestLike(userId: $userId, compter: $compter, date: $date, likeId: $likeId)';
}


}

/// @nodoc
abstract mixin class $RequestLikeCopyWith<$Res>  {
  factory $RequestLikeCopyWith(RequestLike value, $Res Function(RequestLike) _then) = _$RequestLikeCopyWithImpl;
@useResult
$Res call({
 String userId, int compter, String date, String? likeId
});




}
/// @nodoc
class _$RequestLikeCopyWithImpl<$Res>
    implements $RequestLikeCopyWith<$Res> {
  _$RequestLikeCopyWithImpl(this._self, this._then);

  final RequestLike _self;
  final $Res Function(RequestLike) _then;

/// Create a copy of RequestLike
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? compter = null,Object? date = null,Object? likeId = freezed,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,compter: null == compter ? _self.compter : compter // ignore: cast_nullable_to_non_nullable
as int,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,likeId: freezed == likeId ? _self.likeId : likeId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RequestLike].
extension RequestLikePatterns on RequestLike {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SRequestLike value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SRequestLike() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SRequestLike value)  $default,){
final _that = this;
switch (_that) {
case _SRequestLike():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SRequestLike value)?  $default,){
final _that = this;
switch (_that) {
case _SRequestLike() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  int compter,  String date,  String? likeId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SRequestLike() when $default != null:
return $default(_that.userId,_that.compter,_that.date,_that.likeId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  int compter,  String date,  String? likeId)  $default,) {final _that = this;
switch (_that) {
case _SRequestLike():
return $default(_that.userId,_that.compter,_that.date,_that.likeId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  int compter,  String date,  String? likeId)?  $default,) {final _that = this;
switch (_that) {
case _SRequestLike() when $default != null:
return $default(_that.userId,_that.compter,_that.date,_that.likeId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SRequestLike implements RequestLike {
   _SRequestLike({required this.userId, required this.compter, required this.date, this.likeId});
  factory _SRequestLike.fromJson(Map<String, dynamic> json) => _$SRequestLikeFromJson(json);

@override final  String userId;
@override final  int compter;
@override final  String date;
@override final  String? likeId;

/// Create a copy of RequestLike
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SRequestLikeCopyWith<_SRequestLike> get copyWith => __$SRequestLikeCopyWithImpl<_SRequestLike>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SRequestLikeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SRequestLike&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.compter, compter) || other.compter == compter)&&(identical(other.date, date) || other.date == date)&&(identical(other.likeId, likeId) || other.likeId == likeId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,compter,date,likeId);

@override
String toString() {
  return 'RequestLike(userId: $userId, compter: $compter, date: $date, likeId: $likeId)';
}


}

/// @nodoc
abstract mixin class _$SRequestLikeCopyWith<$Res> implements $RequestLikeCopyWith<$Res> {
  factory _$SRequestLikeCopyWith(_SRequestLike value, $Res Function(_SRequestLike) _then) = __$SRequestLikeCopyWithImpl;
@override @useResult
$Res call({
 String userId, int compter, String date, String? likeId
});




}
/// @nodoc
class __$SRequestLikeCopyWithImpl<$Res>
    implements _$SRequestLikeCopyWith<$Res> {
  __$SRequestLikeCopyWithImpl(this._self, this._then);

  final _SRequestLike _self;
  final $Res Function(_SRequestLike) _then;

/// Create a copy of RequestLike
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? compter = null,Object? date = null,Object? likeId = freezed,}) {
  return _then(_SRequestLike(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,compter: null == compter ? _self.compter : compter // ignore: cast_nullable_to_non_nullable
as int,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,likeId: freezed == likeId ? _self.likeId : likeId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
