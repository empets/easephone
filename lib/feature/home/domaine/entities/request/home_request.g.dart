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
    );

Map<String, dynamic> _$SRequestLikeToJson(_SRequestLike instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'compter': instance.compter,
      'date': instance.date,
    };
