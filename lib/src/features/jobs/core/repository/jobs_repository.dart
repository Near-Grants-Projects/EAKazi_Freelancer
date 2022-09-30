import 'package:dartz/dartz.dart';
import 'package:ea_kazi/src/common/models/failure.dart';
import 'package:ea_kazi/src/features/jobs/core/apis/get_all_jobs/response/get_all_jobs_response.dart';

abstract class JobRepository {
  Future<Either<Failure, GetAllJobsResponse>> getAllJobs();
}
