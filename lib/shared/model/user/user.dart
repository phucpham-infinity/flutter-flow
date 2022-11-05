import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String aud,
    required String role,
    required String email,
    required DateTime email_confirmed_at,
    required String? phone,
    required DateTime confirmation_sent_at,
    required DateTime confirmed_at,
    required DateTime last_sign_in_at,
    required DateTime created_at,
    required DateTime updated_at,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
