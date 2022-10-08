import 'package:bloc/bloc.dart';
import 'package:ea_kazi/src/constants/app_constants.dart';
import 'package:ea_kazi/src/features/jobs/core/apis/get_all_jobs/response/get_all_jobs_response.dart';
import 'package:ea_kazi/src/features/jobs/core/apis/get_all_skills/response/get_all_skills_response.dart';
import 'package:ea_kazi/src/features/jobs/core/models/jobs_model/jobs_model.dart';
import 'package:ea_kazi/src/features/jobs/core/models/skill_model/skill_model.dart';
import 'package:ea_kazi/src/features/jobs/core/repository/jobs_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final JobRepository _jobRepository;

  late List<JobsModel> _jobs = [];

  late List<SkillModel> _skills = [];

  HomeBloc(@Named(AppConstants.defaultRepositoriesImpl) this._jobRepository)
      : super(const _Loading()) {
    on<_Started>((event, emit) async {
      final results =
          await Future.wait([_jobRepository.getAllJobs(), _jobRepository.getAllSkills()]);

      results[0].fold((failure) {
        emit(_ErrorState(failure.message, DateTime.now()));
      }, (jobs) {
        _jobs = (jobs as GetAllJobsResponse).jobs!;

        results[1].fold((failure) {
          emit(_ErrorState(failure.message, DateTime.now()));
        }, (skills) {
          _skills = (skills as GetAllSkillsResponse).skills!;
          emit(_LoadedState(_jobs, _skills));
        });
      });
    });
  }
}
