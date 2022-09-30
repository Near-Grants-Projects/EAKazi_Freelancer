import 'package:json_annotation/json_annotation.dart';

part 'jobs_model.g.dart';

@JsonSerializable()
class JobsModel {
  @JsonKey(name: 'id')
  String id;

  @JsonKey(name: 'recruiter_id')
  String recruiterId;

  @JsonKey(name: 'state')
  String state;

  @JsonKey(name: 'status')
  String status;

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'description')
  String description;

  @JsonKey(name: 'expires_at')
  String? expiresAt;

  JobsModel({
    required this.id,
    required this.recruiterId,
    required this.state,
    required this.status,
    required this.title,
    required this.description,
    this.expiresAt,
  });

  factory JobsModel.fromJson(Map<String, dynamic> json) => _$JobsModelFromJson(json);

  Map<String, dynamic> toJson() => _$JobsModelToJson(this);
}
