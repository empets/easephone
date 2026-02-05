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

RequestFilterProfile _$RequestFilterProfileFromJson(
  Map<String, dynamic> json
) {
    return _SRequestFilterProfile.fromJson(
      json
    );
}

/// @nodoc
mixin _$RequestFilterProfile {

 String get adresse; bool get filterIsActif;
/// Create a copy of RequestFilterProfile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestFilterProfileCopyWith<RequestFilterProfile> get copyWith => _$RequestFilterProfileCopyWithImpl<RequestFilterProfile>(this as RequestFilterProfile, _$identity);

  /// Serializes this RequestFilterProfile to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestFilterProfile&&(identical(other.adresse, adresse) || other.adresse == adresse)&&(identical(other.filterIsActif, filterIsActif) || other.filterIsActif == filterIsActif));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,adresse,filterIsActif);

@override
String toString() {
  return 'RequestFilterProfile(adresse: $adresse, filterIsActif: $filterIsActif)';
}


}

/// @nodoc
abstract mixin class $RequestFilterProfileCopyWith<$Res>  {
  factory $RequestFilterProfileCopyWith(RequestFilterProfile value, $Res Function(RequestFilterProfile) _then) = _$RequestFilterProfileCopyWithImpl;
@useResult
$Res call({
 String adresse, bool filterIsActif
});




}
/// @nodoc
class _$RequestFilterProfileCopyWithImpl<$Res>
    implements $RequestFilterProfileCopyWith<$Res> {
  _$RequestFilterProfileCopyWithImpl(this._self, this._then);

  final RequestFilterProfile _self;
  final $Res Function(RequestFilterProfile) _then;

/// Create a copy of RequestFilterProfile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? adresse = null,Object? filterIsActif = null,}) {
  return _then(_self.copyWith(
adresse: null == adresse ? _self.adresse : adresse // ignore: cast_nullable_to_non_nullable
as String,filterIsActif: null == filterIsActif ? _self.filterIsActif : filterIsActif // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [RequestFilterProfile].
extension RequestFilterProfilePatterns on RequestFilterProfile {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SRequestFilterProfile value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SRequestFilterProfile() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SRequestFilterProfile value)  $default,){
final _that = this;
switch (_that) {
case _SRequestFilterProfile():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SRequestFilterProfile value)?  $default,){
final _that = this;
switch (_that) {
case _SRequestFilterProfile() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String adresse,  bool filterIsActif)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SRequestFilterProfile() when $default != null:
return $default(_that.adresse,_that.filterIsActif);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String adresse,  bool filterIsActif)  $default,) {final _that = this;
switch (_that) {
case _SRequestFilterProfile():
return $default(_that.adresse,_that.filterIsActif);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String adresse,  bool filterIsActif)?  $default,) {final _that = this;
switch (_that) {
case _SRequestFilterProfile() when $default != null:
return $default(_that.adresse,_that.filterIsActif);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SRequestFilterProfile implements RequestFilterProfile {
   _SRequestFilterProfile({required this.adresse, required this.filterIsActif});
  factory _SRequestFilterProfile.fromJson(Map<String, dynamic> json) => _$SRequestFilterProfileFromJson(json);

@override final  String adresse;
@override final  bool filterIsActif;

/// Create a copy of RequestFilterProfile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SRequestFilterProfileCopyWith<_SRequestFilterProfile> get copyWith => __$SRequestFilterProfileCopyWithImpl<_SRequestFilterProfile>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SRequestFilterProfileToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SRequestFilterProfile&&(identical(other.adresse, adresse) || other.adresse == adresse)&&(identical(other.filterIsActif, filterIsActif) || other.filterIsActif == filterIsActif));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,adresse,filterIsActif);

@override
String toString() {
  return 'RequestFilterProfile(adresse: $adresse, filterIsActif: $filterIsActif)';
}


}

/// @nodoc
abstract mixin class _$SRequestFilterProfileCopyWith<$Res> implements $RequestFilterProfileCopyWith<$Res> {
  factory _$SRequestFilterProfileCopyWith(_SRequestFilterProfile value, $Res Function(_SRequestFilterProfile) _then) = __$SRequestFilterProfileCopyWithImpl;
@override @useResult
$Res call({
 String adresse, bool filterIsActif
});




}
/// @nodoc
class __$SRequestFilterProfileCopyWithImpl<$Res>
    implements _$SRequestFilterProfileCopyWith<$Res> {
  __$SRequestFilterProfileCopyWithImpl(this._self, this._then);

  final _SRequestFilterProfile _self;
  final $Res Function(_SRequestFilterProfile) _then;

/// Create a copy of RequestFilterProfile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? adresse = null,Object? filterIsActif = null,}) {
  return _then(_SRequestFilterProfile(
adresse: null == adresse ? _self.adresse : adresse // ignore: cast_nullable_to_non_nullable
as String,filterIsActif: null == filterIsActif ? _self.filterIsActif : filterIsActif // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

RequestFormsCheckFile _$RequestFormsCheckFileFromJson(
  Map<String, dynamic> json
) {
    return _SRequestFormsCheckFile.fromJson(
      json
    );
}

/// @nodoc
mixin _$RequestFormsCheckFile {

 String get recto; String get verso; String get formFive; String get userId;
/// Create a copy of RequestFormsCheckFile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestFormsCheckFileCopyWith<RequestFormsCheckFile> get copyWith => _$RequestFormsCheckFileCopyWithImpl<RequestFormsCheckFile>(this as RequestFormsCheckFile, _$identity);

  /// Serializes this RequestFormsCheckFile to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestFormsCheckFile&&(identical(other.recto, recto) || other.recto == recto)&&(identical(other.verso, verso) || other.verso == verso)&&(identical(other.formFive, formFive) || other.formFive == formFive)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,recto,verso,formFive,userId);

@override
String toString() {
  return 'RequestFormsCheckFile(recto: $recto, verso: $verso, formFive: $formFive, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $RequestFormsCheckFileCopyWith<$Res>  {
  factory $RequestFormsCheckFileCopyWith(RequestFormsCheckFile value, $Res Function(RequestFormsCheckFile) _then) = _$RequestFormsCheckFileCopyWithImpl;
@useResult
$Res call({
 String recto, String verso, String formFive, String userId
});




}
/// @nodoc
class _$RequestFormsCheckFileCopyWithImpl<$Res>
    implements $RequestFormsCheckFileCopyWith<$Res> {
  _$RequestFormsCheckFileCopyWithImpl(this._self, this._then);

  final RequestFormsCheckFile _self;
  final $Res Function(RequestFormsCheckFile) _then;

/// Create a copy of RequestFormsCheckFile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? recto = null,Object? verso = null,Object? formFive = null,Object? userId = null,}) {
  return _then(_self.copyWith(
recto: null == recto ? _self.recto : recto // ignore: cast_nullable_to_non_nullable
as String,verso: null == verso ? _self.verso : verso // ignore: cast_nullable_to_non_nullable
as String,formFive: null == formFive ? _self.formFive : formFive // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RequestFormsCheckFile].
extension RequestFormsCheckFilePatterns on RequestFormsCheckFile {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SRequestFormsCheckFile value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SRequestFormsCheckFile() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SRequestFormsCheckFile value)  $default,){
final _that = this;
switch (_that) {
case _SRequestFormsCheckFile():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SRequestFormsCheckFile value)?  $default,){
final _that = this;
switch (_that) {
case _SRequestFormsCheckFile() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String recto,  String verso,  String formFive,  String userId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SRequestFormsCheckFile() when $default != null:
return $default(_that.recto,_that.verso,_that.formFive,_that.userId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String recto,  String verso,  String formFive,  String userId)  $default,) {final _that = this;
switch (_that) {
case _SRequestFormsCheckFile():
return $default(_that.recto,_that.verso,_that.formFive,_that.userId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String recto,  String verso,  String formFive,  String userId)?  $default,) {final _that = this;
switch (_that) {
case _SRequestFormsCheckFile() when $default != null:
return $default(_that.recto,_that.verso,_that.formFive,_that.userId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SRequestFormsCheckFile implements RequestFormsCheckFile {
   _SRequestFormsCheckFile({required this.recto, required this.verso, required this.formFive, required this.userId});
  factory _SRequestFormsCheckFile.fromJson(Map<String, dynamic> json) => _$SRequestFormsCheckFileFromJson(json);

@override final  String recto;
@override final  String verso;
@override final  String formFive;
@override final  String userId;

/// Create a copy of RequestFormsCheckFile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SRequestFormsCheckFileCopyWith<_SRequestFormsCheckFile> get copyWith => __$SRequestFormsCheckFileCopyWithImpl<_SRequestFormsCheckFile>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SRequestFormsCheckFileToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SRequestFormsCheckFile&&(identical(other.recto, recto) || other.recto == recto)&&(identical(other.verso, verso) || other.verso == verso)&&(identical(other.formFive, formFive) || other.formFive == formFive)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,recto,verso,formFive,userId);

@override
String toString() {
  return 'RequestFormsCheckFile(recto: $recto, verso: $verso, formFive: $formFive, userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$SRequestFormsCheckFileCopyWith<$Res> implements $RequestFormsCheckFileCopyWith<$Res> {
  factory _$SRequestFormsCheckFileCopyWith(_SRequestFormsCheckFile value, $Res Function(_SRequestFormsCheckFile) _then) = __$SRequestFormsCheckFileCopyWithImpl;
@override @useResult
$Res call({
 String recto, String verso, String formFive, String userId
});




}
/// @nodoc
class __$SRequestFormsCheckFileCopyWithImpl<$Res>
    implements _$SRequestFormsCheckFileCopyWith<$Res> {
  __$SRequestFormsCheckFileCopyWithImpl(this._self, this._then);

  final _SRequestFormsCheckFile _self;
  final $Res Function(_SRequestFormsCheckFile) _then;

/// Create a copy of RequestFormsCheckFile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? recto = null,Object? verso = null,Object? formFive = null,Object? userId = null,}) {
  return _then(_SRequestFormsCheckFile(
recto: null == recto ? _self.recto : recto // ignore: cast_nullable_to_non_nullable
as String,verso: null == verso ? _self.verso : verso // ignore: cast_nullable_to_non_nullable
as String,formFive: null == formFive ? _self.formFive : formFive // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
