// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authen_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SRequestAuthen _$SRequestAuthenFromJson(Map<String, dynamic> json) =>
    _SRequestAuthen(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$SRequestAuthenToJson(_SRequestAuthen instance) =>
    <String, dynamic>{'email': instance.email, 'password': instance.password};

_SRequestCreateCompteHomeInformation
_$SRequestCreateCompteHomeInformationFromJson(Map<String, dynamic> json) =>
    _SRequestCreateCompteHomeInformation(
      name: json['name'] as String,
      specialite: json['specialite'] as String,
      telephone: json['telephone'] as String,
      adresse: json['adresse'] as String,
      email: json['email'] as String,
      autherKey: json['autherKey'] as String,
    );

Map<String, dynamic> _$SRequestCreateCompteHomeInformationToJson(
  _SRequestCreateCompteHomeInformation instance,
) => <String, dynamic>{
  'name': instance.name,
  'specialite': instance.specialite,
  'telephone': instance.telephone,
  'adresse': instance.adresse,
  'email': instance.email,
  'autherKey': instance.autherKey,
};

_SRequestCreateCompteHeber _$SRequestCreateCompteHeberFromJson(
  Map<String, dynamic> json,
) => _SRequestCreateCompteHeber(
  roomNumber: json['roomNumber'] as String,
  averageBed: json['averageBed'] as String,
  option: json['option'] as String,
  description: json['description'] as String,
);

Map<String, dynamic> _$SRequestCreateCompteHeberToJson(
  _SRequestCreateCompteHeber instance,
) => <String, dynamic>{
  'roomNumber': instance.roomNumber,
  'averageBed': instance.averageBed,
  'option': instance.option,
  'description': instance.description,
};
