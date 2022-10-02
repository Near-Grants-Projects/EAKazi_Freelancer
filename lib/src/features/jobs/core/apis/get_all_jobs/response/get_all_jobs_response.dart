import 'package:json_annotation/json_annotation.dart';

import 'package:ea_kazi/src/features/jobs/core/models/jobs_model/jobs_model.dart';

part 'get_all_jobs_response.g.dart';

@JsonSerializable()
class GetAllJobsResponse {
  @JsonKey(name: 'status')
  String status;

  @JsonKey(name: 'message')
  String message;

  @JsonKey(name: 'data')
  List<JobsModel>? jobs;

  GetAllJobsResponse({
    required this.status,
    required this.message,
    this.jobs,
  });

  factory GetAllJobsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAllJobsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetAllJobsResponseToJson(this);
}
