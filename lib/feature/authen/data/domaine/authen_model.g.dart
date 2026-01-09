// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authen_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SProfileUserModel _$SProfileUserModelFromJson(Map<String, dynamic> json) =>
    _SProfileUserModel(
      email: json['email'] as String?,
      password: json['password'] as String?,
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$SProfileUserModelToJson(_SProfileUserModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'userId': instance.userId,
    };
