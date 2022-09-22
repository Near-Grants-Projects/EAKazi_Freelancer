import 'package:dio/dio.dart';
import 'package:ea_kazi/src/constants/api_constants/auth_api_constants.dart';
import 'package:ea_kazi/src/constants/api_constants/base_api_constants.dart';
import 'package:ea_kazi/src/features/authentication/core/api/signin/request/sign_in_request.dart';
import 'package:ea_kazi/src/features/authentication/core/api/signin/response/sign_in_response.dart';
import 'package:ea_kazi/src/features/authentication/core/api/signup/request/signup_request.dart';
import 'package:ea_kazi/src/features/authentication/core/api/signup/response/signup_response.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_api_manager.g.dart';

@LazySingleton()
@RestApi(baseUrl: '${BaseApiConstants.baseUrl}${AuthApiConstants.authModule}')
abstract class AuthApiManager {
  @POST(AuthApiConstants.signupEndpoint)
  Future<SignupResponse> signUp(
    @Body() SignupRequest details,
  );

  @POST(AuthApiConstants.signinEndpoint)
  Future<SignInResponse> signIn(
    @Body() SignInRequest details,
  );

  @factoryMethod
  static AuthApiManager create() {
    final client = Dio(BaseOptions(
      baseUrl: BaseApiConstants.baseUrl,
      receiveTimeout: 60000,
      connectTimeout: 60000,
      sendTimeout: 60000,
    ));

    return _AuthApiManager(client);
  }
}
