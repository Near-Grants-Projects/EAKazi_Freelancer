import 'package:ea_kazi/src/features/jobs/core/models/skill_model/skill_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_all_skills_response.g.dart';

@JsonSerializable()
class GetAllSkillsResponse {
  @JsonKey(name: 'status')
  String status;

  @JsonKey(name: 'message')
  String message;

  @JsonKey(name: 'data')
  List<SkillModel>? skills;

  GetAllSkillsResponse({
    required this.status,
    required this.message,
    this.skills,
  });

  factory GetAllSkillsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAllSkillsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetAllSkillsResponseToJson(this);
}
