part of 'jobs_bloc.dart';

@freezed
class JobsEvent with _$JobsEvent {
  const factory JobsEvent.started() = _Started;
}