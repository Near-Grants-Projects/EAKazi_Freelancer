import 'package:dartz/dartz.dart';
import 'package:ea_kazi/src/common/models/failure.dart';
import 'package:ea_kazi/src/features/authentication/core/api/signin/request/sign_in_request.dart';
import 'package:ea_kazi/src/features/authentication/core/api/signin/response/sign_in_response.dart';
import 'package:ea_kazi/src/features/authentication/core/api/signup/request/signup_request.dart';
import 'package:ea_kazi/src/features/authentication/core/api/signup/response/signup_response.dart';

abstract class AuthRepository {
  Future<Either<Failure, SignupResponse>> registerUser({
    required SignupRequest requestBody,
  });

  Future<Either<Failure, SignInResponse>> signInUser({
    required SignInRequest requestBody,
  });
}
