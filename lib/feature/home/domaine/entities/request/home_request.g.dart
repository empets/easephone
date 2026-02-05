// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SRequestLike _$SRequestLikeFromJson(Map<String, dynamic> json) =>
    _SRequestLike(
      userId: json['userId'] as String,
      compter: (json['compter'] as num).toInt(),
      date: json['date'] as String,
      likeId: json['likeId'] as String?,
    );

Map<String, dynamic> _$SRequestLikeToJson(_SRequestLike instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'compter': instance.compter,
      'date': instance.date,
      'likeId': instance.likeId,
    };

_SRequestFilterProfile _$SRequestFilterProfileFromJson(
  Map<String, dynamic> json,
) => _SRequestFilterProfile(
  adresse: json['adresse'] as String,
  filterIsActif: json['filterIsActif'] as bool,
);

Map<String, dynamic> _$SRequestFilterProfileToJson(
  _SRequestFilterProfile instance,
) => <String, dynamic>{
  'adresse': instance.adresse,
  'filterIsActif': instance.filterIsActif,
};

_SRequestFormsCheckFile _$SRequestFormsCheckFileFromJson(
  Map<String, dynamic> json,
) => _SRequestFormsCheckFile(
  recto: json['recto'] as String,
  verso: json['verso'] as String,
  formFive: json['formFive'] as String,
  userId: json['userId'] as String,
);

Map<String, dynamic> _$SRequestFormsCheckFileToJson(
  _SRequestFormsCheckFile instance,
) => <String, dynamic>{
  'recto': instance.recto,
  'verso': instance.verso,
  'formFive': instance.formFive,
  'userId': instance.userId,
};
