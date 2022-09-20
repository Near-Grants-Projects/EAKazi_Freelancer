import 'dart:io';

import 'package:dio/dio.dart';
import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:ea_kazi/src/features/authentication/core/api/auth_api_manager.dart';
import 'package:ea_kazi/src/features/authentication/core/api/signup/response/signup_response.dart';
import 'package:ea_kazi/src/features/authentication/core/api/signup/request/signup_request.dart';
import 'package:ea_kazi/src/common/models/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:ea_kazi/src/features/authentication/core/repository/auth_repository.dart';
import 'package:injectable/injectable.dart';

@Named(AppConstants.defaultRepositoriesImpl)
@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl extends AuthRepository {
  final AuthApiManager _authApiManager;

  AuthRepositoryImpl(this._authApiManager);

  Future<SignupResponse> _registerUser({required SignupRequest requestBody}) async {
    try {
      final response = await _authApiManager.signUp(requestBody);

      return response;
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
            errorCode: Failure.somethingWentWrongCode,
            message: Failure.somethingWentWrongMsg,
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
  Future<Either<Failure, SignupResponse>> registerUser({required SignupRequest requestBody}) async {
    final Either<Failure, SignupResponse> result =
        await Task(() => _registerUser(requestBody: requestBody))
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
