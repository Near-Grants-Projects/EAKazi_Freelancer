import 'package:json_annotation/json_annotation.dart';

import 'package:ea_kazi/src/features/jobs/core/models/skill_model/skill_model.dart';

part 'job_response_skill.g.dart';

@JsonSerializable()
class JobResponseSkill {
  @JsonKey(name: 'skill')
  SkillModel skill;

  JobResponseSkill({
    required this.skill,
  });

  factory JobResponseSkill.fromJson(Map<String, dynamic> json) => _$JobResponseSkillFromJson(json);

  Map<String, dynamic> toJson() => _$JobResponseSkillToJson(this);
}
