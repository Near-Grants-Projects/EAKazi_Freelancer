part of 'sign_in_bloc.dart';

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.started() = _Started;

  const factory SignInEvent.toggleVisibilityEvent() = _ToggleVisibilityEvent;

  const factory SignInEvent.performSignInEvent() = _PerformSignInEvent;
}
