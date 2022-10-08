part of 'jobs_bloc.dart';

@freezed
class JobsState with _$JobsState {
  const factory JobsState.initial() = _Initial;

  const factory JobsState.loadingState() = _LoadingState;

  const factory JobsState.loadedState(List<JobsModel> jobs) = _LoadedState;

  const factory JobsState.errorState(String message, DateTime dateTime) = _ErrorState;
}
