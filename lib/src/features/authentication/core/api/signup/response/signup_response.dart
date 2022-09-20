import 'package:ea_kazi/src/features/authentication/core/models/user_model.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class SignupResponse {
  @JsonKey(name: 'message')
  String? message;

  @JsonKey(name: 'data')
  UserModel data;

  SignupResponse({this.message, required this.data});

  factory SignupResponse.fromJson(Map<String, dynamic> json) => _$SignupResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SignupResponseToJson(this);
}
