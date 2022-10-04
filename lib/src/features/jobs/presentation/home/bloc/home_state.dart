part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  const factory HomeState.loading() = _Loading;

  const factory HomeState.loadedState(List<JobsModel> jobs, List<SkillModel> skills) = _LoadedState;

  const factory HomeState.errorState(String message, DateTime dateTime) = _ErrorState;
}
