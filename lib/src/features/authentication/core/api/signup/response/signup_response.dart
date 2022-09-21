import 'package:json_annotation/json_annotation.dart';

import 'package:ea_kazi/src/features/authentication/core/models/user_model.dart';

part 'signup_response.g.dart';

@JsonSerializable()
class SignupResponse {
  @JsonKey(name: 'message')
  String? message;

  @JsonKey(name: 'data')
  UserModel body;

  SignupResponse({
    this.message,
    required this.body,
  });

  factory SignupResponse.fromJson(Map<String, dynamic> json) => _$SignupResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SignupResponseToJson(this);
}
