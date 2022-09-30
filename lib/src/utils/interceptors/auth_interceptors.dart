import 'package:dio/dio.dart';
import 'package:ea_kazi/src/constants/api_constants/base_api_constants.dart';
import 'package:ea_kazi/src/utils/ea_kazi_secure_storage.dart/ea_kazi_secure_storage.dart';

class AuthInterceptor extends Interceptor {
  final Dio dio;

  AuthInterceptor(this.dio);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    String? token = await EaKaziSecureStorage.instance.read(key: BaseApiConstants.token);
    options.headers['x-auth-token'] = token ?? '';

    options.contentType = Headers.jsonContentType;

    return handler.next(options);
  }
}
