import 'dart:io';

import 'package:dio/dio.dart';
import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:ea_kazi/src/features/jobs/core/apis/get_all_jobs/response/get_all_jobs_response.dart';
import 'package:ea_kazi/src/common/models/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:ea_kazi/src/features/jobs/core/apis/get_all_skills/response/get_all_skills_response.dart';
import 'package:ea_kazi/src/features/jobs/core/apis/jobs_api_manager.dart';
import 'package:ea_kazi/src/features/jobs/core/repository/jobs_repository.dart';
import 'package:injectable/injectable.dart';

@Named(AppConstants.defaultRepositoriesImpl)
@LazySingleton(as: JobRepository)
class JobRepositoryImpl extends JobRepository {
  final JobsApiManager _jobsApiManager;

  JobRepositoryImpl(this._jobsApiManager);

  Future<GetAllJobsResponse> _getAllJobs() async {
    try {
      return await _jobsApiManager.getAllJobs();
    } on DioError catch (err) {
      switch (err.type) {
        case DioErrorType.connectTimeout:
        case DioErrorType.sendTimeout:
        case DioErrorType.receiveTimeout:
          throw Failure(
            errorCode: Failure.socketExceptionCode,
            message: Failure.socketExceptionMsg,
          );

        case DioErrorType.response:
          throw Failure(
            errorCode: err.response?.statusCode ?? 0,
            message: err.response?.data['message'],
          );

        case DioErrorType.other:
        default:
          if (err is SocketException) {
            throw Failure(
              errorCode: Failure.socketExceptionCode,
              message: Failure.socketExceptionMsg,
            );
          } else if (err is FormatException) {
            throw Failure(
              errorCode: Failure.formatExceptionCode,
              message: Failure.formatExceptionMsg,
            );
          } else if (err is HttpException) {
            throw Failure(
              errorCode: Failure.somethingWentWrongCode,
              message: Failure.somethingWentWrongMsg,
            );
          }
          throw Failure(
            errorCode: Failure.somethingWentWrongCode,
            message: Failure.somethingWentWrongMsg,
          );
      }
    } catch (err) {
      rethrow;
    }
  }

  @override
  Future<Either<Failure, GetAllJobsResponse>> getAllJobs() async {
    final Either<Failure, GetAllJobsResponse> result = await Task(() => _getAllJobs())
        .attempt()
        .map(
          (either) => either.leftMap(
            (obj) {
              try {
                return obj as Failure;
              } catch (err) {
                throw obj;
              }
            },
          ),
        )
        .run();

    return result;
  }

  Future<GetAllSkillsResponse> _getAllSkills() async {
    try {
      return await _jobsApiManager.getAllSkills();
    } on DioError catch (err) {
      switch (err.type) {
        case DioErrorType.connectTimeout:
        case DioErrorType.sendTimeout:
        case DioErrorType.receiveTimeout:
          throw Failure(
            errorCode: Failure.socketExceptionCode,
            message: Failure.socketExceptionMsg,
          );

        case DioErrorType.response:
          throw Failure(
            errorCode: err.response?.statusCode ?? 0,
            message: err.response?.data['message'],
          );

        case DioErrorType.other:
        default:
          if (err is SocketException) {
            throw Failure(
              errorCode: Failure.socketExceptionCode,
              message: Failure.socketExceptionMsg,
            );
          } else if (err is FormatException) {
            throw Failure(
              errorCode: Failure.formatExceptionCode,
              message: Failure.formatExceptionMsg,
            );
          } else if (err is HttpException) {
            throw Failure(
              errorCode: Failure.somethingWentWrongCode,
              message: Failure.somethingWentWrongMsg,
            );
          }
          throw Failure(
            errorCode: Failure.somethingWentWrongCode,
            message: Failure.somethingWentWrongMsg,
          );
      }
    } catch (err) {
      rethrow;
    }
  }

  @override
  Future<Either<Failure, GetAllSkillsResponse>> getAllSkills() async {
    final Either<Failure, GetAllSkillsResponse> result = await Task(() => _getAllSkills())
        .attempt()
        .map(
          (either) => either.leftMap(
            (obj) {
              try {
                return obj as Failure;
              } catch (err) {
                throw obj;
              }
            },
          ),
        )
        .run();

    return result;
  }
}
