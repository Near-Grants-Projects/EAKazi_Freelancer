// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_jobs_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllJobsResponse _$GetAllJobsResponseFromJson(Map<String, dynamic> json) =>
    GetAllJobsResponse(
      status: json['status'] as String,
      message: json['message'] as String,
      jobs: (json['data'] as List<dynamic>?)
          ?.map((e) => JobsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetAllJobsResponseToJson(GetAllJobsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.jobs,
    };
