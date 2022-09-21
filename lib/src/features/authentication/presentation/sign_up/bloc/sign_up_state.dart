part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState.initial() = _Initial;

  const factory SignUpState.passwordVisibilityToggledState(bool isVisible) =
      _PasswordVisibilityToggledState;

  const factory SignUpState.loadingState() = _LoadingState;

  const factory SignUpState.errorState(String message, DateTime date) = _ErrorState;

  const factory SignUpState.successState() = _SuccessState;
}
