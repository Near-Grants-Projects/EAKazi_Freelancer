// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_skills_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllSkillsResponse _$GetAllSkillsResponseFromJson(
        Map<String, dynamic> json) =>
    GetAllSkillsResponse(
      status: json['status'] as String,
      message: json['message'] as String,
      skills: (json['data'] as List<dynamic>?)
          ?.map((e) => SkillModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetAllSkillsResponseToJson(
        GetAllSkillsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.skills,
    };
