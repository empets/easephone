// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SActiveUserProfile _$SActiveUserProfileFromJson(Map<String, dynamic> json) =>
    _SActiveUserProfile(
      adresse: json['adresse'] as String,
      autherKey: json['autherKey'] as String,
      email: json['email'] as String,
      name: json['name'] as String,
      serviceLibelle: json['serviceLibelle'] as String,
      specialite: json['specialite'] as String,
      telephone: json['telephone'] as String,
      user: json['user'] as String,
      averageBed: json['averageBed'] as String,
      description: json['description'] as String,
      option: json['option'] as String,
      roomNumber: json['roomNumber'] as String,
    );

Map<String, dynamic> _$SActiveUserProfileToJson(_SActiveUserProfile instance) =>
    <String, dynamic>{
      'adresse': instance.adresse,
      'autherKey': instance.autherKey,
      'email': instance.email,
      'name': instance.name,
      'serviceLibelle': instance.serviceLibelle,
      'specialite': instance.specialite,
      'telephone': instance.telephone,
      'user': instance.user,
      'averageBed': instance.averageBed,
      'description': instance.description,
      'option': instance.option,
      'roomNumber': instance.roomNumber,
    };
