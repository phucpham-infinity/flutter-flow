import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboard.freezed.dart';
part 'onboard.g.dart';

Onboard onboardFromJson(String str) => Onboard.fromJson(json.decode(str));

String onboardToJson(Onboard data) => json.encode(data.toJson());

@freezed
class Onboard with _$Onboard {
  const factory Onboard({
    required int is_onboard,
    required int steps,
    required int current_step,
  }) = _Onboard;

  factory Onboard.fromJson(Map<String, dynamic> json) =>
      _$OnboardFromJson(json);
}
