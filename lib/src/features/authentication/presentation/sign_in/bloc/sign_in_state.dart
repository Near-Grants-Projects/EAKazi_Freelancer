part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState.initial() = _Initial;

  const factory SignInState.passwordVisibilityToggledState(bool isVisible) =
      _PasswordVisibilityToggledState;

  const factory SignInState.loadingState() = _LoadingState;

  const factory SignInState.errorState(String message, DateTime date) = _ErrorState;

  const factory SignInState.successState() = _SuccessState;
}
