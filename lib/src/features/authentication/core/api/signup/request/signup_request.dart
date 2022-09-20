import 'package:json_annotation/json_annotation.dart';

part 'signup_request.g.dart';

@JsonSerializable()
class SignupRequest {
  @JsonKey(name: 'first_name')
  String firstName;

  @JsonKey(name: 'last_name')
  String lastName;

  @JsonKey(name: 'email')
  String email;

  @JsonKey(name: 'password')
  String password;

  @JsonKey(name: "user_role")
  String userRole;

  SignupRequest({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    required this.userRole,
  });

  factory SignupRequest.fromJson(Map<String, dynamic> json) => _$SignupRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SignupRequestToJson(this);
}
