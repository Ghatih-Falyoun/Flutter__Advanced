// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sing_up_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingUpRequestBody _$SingUpRequestBodyFromJson(Map<String, dynamic> json) =>
    SingUpRequestBody(
      name: json['name'] as String,
      email: json['email'] as String,
      phoneNumber: (json['phone'] as num).toInt(),
      gender: (json['gender'] as num).toInt(),
      password: json['password'] as String,
      password_confirmation: json['password_confirmation'] as String,
    );

Map<String, dynamic> _$SingUpRequestBodyToJson(SingUpRequestBody instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phoneNumber,
      'gender': instance.gender,
      'password': instance.password,
      'password_confirmation': instance.password_confirmation,
    };
