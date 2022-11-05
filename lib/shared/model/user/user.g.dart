// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String,
      aud: json['aud'] as String,
      role: json['role'] as String,
      email: json['email'] as String,
      email_confirmed_at: DateTime.parse(json['email_confirmed_at'] as String),
      phone: json['phone'] as String?,
      confirmation_sent_at:
          DateTime.parse(json['confirmation_sent_at'] as String),
      confirmed_at: DateTime.parse(json['confirmed_at'] as String),
      last_sign_in_at: DateTime.parse(json['last_sign_in_at'] as String),
      created_at: DateTime.parse(json['created_at'] as String),
      updated_at: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'aud': instance.aud,
      'role': instance.role,
      'email': instance.email,
      'email_confirmed_at': instance.email_confirmed_at.toIso8601String(),
      'phone': instance.phone,
      'confirmation_sent_at': instance.confirmation_sent_at.toIso8601String(),
      'confirmed_at': instance.confirmed_at.toIso8601String(),
      'last_sign_in_at': instance.last_sign_in_at.toIso8601String(),
      'created_at': instance.created_at.toIso8601String(),
      'updated_at': instance.updated_at.toIso8601String(),
    };
