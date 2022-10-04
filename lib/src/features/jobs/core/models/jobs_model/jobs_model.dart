import 'package:json_annotation/json_annotation.dart';

import 'package:ea_kazi/src/features/jobs/core/models/job_response_skill/job_response_skill.dart';

part 'jobs_model.g.dart';

@JsonSerializable()
class JobsModel {
  @JsonKey(name: 'id')
  String id;

  @JsonKey(name: 'recruiterId')
  String recruiterId;

  @JsonKey(name: 'state')
  String state;

  @JsonKey(name: 'status')
  String status;

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'description')
  String description;

  @JsonKey(name: 'culture')
  String culture;

  @JsonKey(name: 'location')
  String location;

  @JsonKey(name: 'image')
  String image;

  @JsonKey(name: 'expiresAt')
  String? expiresAt;

  @JsonKey(name: 'createdAt')
  String createdAt;

  @JsonKey(name: 'skills')
  List<JobResponseSkill> skills;

  JobsModel({
    required this.id,
    required this.recruiterId,
    required this.state,
    required this.status,
    required this.title,
    required this.description,
    required this.culture,
    required this.location,
    required this.image,
    this.expiresAt,
    required this.createdAt,
    required this.skills,
  });

  factory JobsModel.fromJson(Map<String, dynamic> json) => _$JobsModelFromJson(json);

  Map<String, dynamic> toJson() => _$JobsModelToJson(this);
}
