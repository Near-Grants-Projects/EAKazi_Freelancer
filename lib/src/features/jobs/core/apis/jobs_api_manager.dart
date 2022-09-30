import 'package:dio/dio.dart';
import 'package:ea_kazi/src/constants/api_constants/base_api_constants.dart';
import 'package:ea_kazi/src/constants/api_constants/jobs_api_constants.dart';
import 'package:ea_kazi/src/features/jobs/core/apis/get_all_jobs/response/get_all_jobs_response.dart';
import 'package:ea_kazi/src/utils/interceptors/auth_interceptors.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'jobs_api_manager.g.dart';

@LazySingleton()
@RestApi(baseUrl: '${BaseApiConstants.baseUrl}${JobsApiConstants.jobsModule}')
abstract class JobsApiManager {
  @GET('')
  Future<GetAllJobsResponse> getAllJobs();

  @factoryMethod
  static JobsApiManager create() {
    final client = Dio(
      BaseOptions(
        baseUrl: BaseApiConstants.baseUrl,
        receiveTimeout: 60000,
        connectTimeout: 60000,
        sendTimeout: 60000,
      ),
    );

    client.interceptors.addAll({
      AuthInterceptor(client),
    });

    return _JobsApiManager(client);
  }
}
