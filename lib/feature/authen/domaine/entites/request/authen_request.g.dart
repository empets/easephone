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
      name: json['name'] as String?,
      specialite: json['specialite'] as String?,
      telephone: json['telephone'] as String?,
      telephon2: json['telephon2'] as String?,
      adresse: json['adresse'] as String?,
      email: json['email'] as String?,
      autherKey: json['autherKey'] as String?,
      roomNumber: json['roomNumber'] as String?,
      averageBed: json['averageBed'] as String?,
      option: json['option'] as String?,
      description: json['description'] as String?,
      emage: json['emage'] as String?,
      formOne: json['formOne'] as String?,
      formTwo: json['formTwo'] as String?,
      formTherd: json['formTherd'] as String?,
    );

Map<String, dynamic> _$SRequestCreateCompteHomeInformationToJson(
  _SRequestCreateCompteHomeInformation instance,
) => <String, dynamic>{
  'name': instance.name,
  'specialite': instance.specialite,
  'telephone': instance.telephone,
  'telephon2': instance.telephon2,
  'adresse': instance.adresse,
  'email': instance.email,
  'autherKey': instance.autherKey,
  'roomNumber': instance.roomNumber,
  'averageBed': instance.averageBed,
  'option': instance.option,
  'description': instance.description,
  'emage': instance.emage,
  'formOne': instance.formOne,
  'formTwo': instance.formTwo,
  'formTherd': instance.formTherd,
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
