import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:ea_kazi/src/common/models/failure.dart';
import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:ea_kazi/src/features/jobs/core/apis/get_all_jobs/response/get_all_jobs_response.dart';
import 'package:ea_kazi/src/features/jobs/core/models/jobs_model/jobs_model.dart';
import 'package:ea_kazi/src/features/jobs/core/repository/jobs_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'jobs_event.dart';
part 'jobs_state.dart';
part 'jobs_bloc.freezed.dart';

@injectable
class JobsBloc extends Bloc<JobsEvent, JobsState> {
  final JobRepository _jobRepository;

  JobsBloc(@Named(AppConstants.defaultRepositoriesImpl) this._jobRepository)
      : super(const _LoadingState()) {
    on<_Started>((event, emit) async {
      final Either<Failure, GetAllJobsResponse> response = await _jobRepository.getAllJobs();

      response.fold((failure) {
        emit(_ErrorState(failure.message, DateTime.now()));
      }, (result) {
        emit(_LoadedState(result.jobs!));
      });
    });
  }
}
