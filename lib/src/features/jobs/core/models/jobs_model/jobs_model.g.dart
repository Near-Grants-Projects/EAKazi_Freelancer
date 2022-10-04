// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jobs_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobsModel _$JobsModelFromJson(Map<String, dynamic> json) => JobsModel(
      id: json['id'] as String,
      recruiterId: json['recruiterId'] as String,
      state: json['state'] as String,
      status: json['status'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      culture: json['culture'] as String,
      location: json['location'] as String,
      image: json['image'] as String,
      expiresAt: json['expiresAt'] as String?,
      createdAt: json['createdAt'] as String,
      skills: (json['skills'] as List<dynamic>)
          .map((e) => JobResponseSkill.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$JobsModelToJson(JobsModel instance) => <String, dynamic>{
      'id': instance.id,
      'recruiterId': instance.recruiterId,
      'state': instance.state,
      'status': instance.status,
      'title': instance.title,
      'description': instance.description,
      'culture': instance.culture,
      'location': instance.location,
      'image': instance.image,
      'expiresAt': instance.expiresAt,
      'createdAt': instance.createdAt,
      'skills': instance.skills,
    };
