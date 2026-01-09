// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SActiveUserProfileModel _$SActiveUserProfileModelFromJson(
  Map<String, dynamic> json,
) => _SActiveUserProfileModel(
  adresse: json['adresse'] as String?,
  autherKey: json['autherKey'] as String?,
  email: json['email'] as String?,
  name: json['name'] as String?,
  serviceLibelle: json['serviceLibelle'] as String?,
  specialite: json['specialite'] as String?,
  telephone: json['telephone'] as String?,
  user: json['user'] as String?,
  averageBed: json['averageBed'] as String?,
  description: json['description'] as String?,
  option: json['option'] as String?,
  roomNumber: json['roomNumber'] as String?,
  facebookLinck: json['facebookLinck'] as String?,
  lat: json['lat'] as String?,
  long: json['long'] as String?,
  whatsappContact: json['whatsappContact'] as String?,
  formOne: json['formOne'] as String?,
  formTwo: json['formTwo'] as String?,
  formTherd: json['formTherd'] as String?,
  file: json['file'] as String?,
);

Map<String, dynamic> _$SActiveUserProfileModelToJson(
  _SActiveUserProfileModel instance,
) => <String, dynamic>{
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
  'facebookLinck': instance.facebookLinck,
  'lat': instance.lat,
  'long': instance.long,
  'whatsappContact': instance.whatsappContact,
  'formOne': instance.formOne,
  'formTwo': instance.formTwo,
  'formTherd': instance.formTherd,
  'file': instance.file,
};

_SLikeResponseModel _$SLikeResponseModelFromJson(Map<String, dynamic> json) =>
    _SLikeResponseModel(
      compter: (json['compter'] as num).toInt(),
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$SLikeResponseModelToJson(_SLikeResponseModel instance) =>
    <String, dynamic>{'compter': instance.compter, 'userId': instance.userId};
