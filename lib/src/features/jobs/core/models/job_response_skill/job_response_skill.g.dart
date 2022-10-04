// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_response_skill.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobResponseSkill _$JobResponseSkillFromJson(Map<String, dynamic> json) =>
    JobResponseSkill(
      skill: SkillModel.fromJson(json['skill'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$JobResponseSkillToJson(JobResponseSkill instance) =>
    <String, dynamic>{
      'skill': instance.skill,
    };
