import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:ea_kazi/src/common/models/failure.dart';
import 'package:ea_kazi/src/constants/app_constants.dart';
import 'package:ea_kazi/src/features/jobs/core/apis/get_all_jobs/response/get_all_jobs_response.dart';
import 'package:ea_kazi/src/features/jobs/core/repository/jobs_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final JobRepository _jobRepository;

  HomeBloc(@Named(AppConstants.defaultRepositoriesImpl) this._jobRepository)
      : super(const _Initial()) {
    on<_Started>((event, emit) async {
      Either<Failure, GetAllJobsResponse> response = await _jobRepository.getAllJobs();

      response.fold((l) => print(l), (r) => print(r));
    });
  }
}
