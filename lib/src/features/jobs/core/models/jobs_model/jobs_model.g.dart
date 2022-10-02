// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jobs_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobsModel _$JobsModelFromJson(Map<String, dynamic> json) => JobsModel(
      id: json['id'] as String,
      recruiterId: json['recruiter_id'] as String,
      state: json['state'] as String,
      status: json['status'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      createdAt: json['created_at'] as String,
      expiresAt: json['expires_at'] as String?,
    );

Map<String, dynamic> _$JobsModelToJson(JobsModel instance) => <String, dynamic>{
      'id': instance.id,
      'recruiter_id': instance.recruiterId,
      'state': instance.state,
      'status': instance.status,
      'title': instance.title,
      'description': instance.description,
      'expires_at': instance.expiresAt,
      'created_at': instance.createdAt,
    };
