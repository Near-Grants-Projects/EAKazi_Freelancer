import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'string_validators.dart';

/// Form type for email & password authentication
enum AuthFormType { signIn, register }

/// Mixin class to be used for client-side email & password validation
mixin EmailAndPasswordValidators {
  final StringValidator emailSubmitValidator = EmailSubmitRegexValidator();
  final StringValidator nameSubmitValidator = MinLengthStringValidator(4);
  final StringValidator passwordRegisterSubmitValidator =
      MinLengthStringValidator(8);
  final StringValidator passwordSignInSubmitValidator =
      NonEmptyStringValidator();
}

/// State class for the email & password form.
class AuthState with EmailAndPasswordValidators {
  AuthState({
    this.formType = AuthFormType.signIn,
    this.value = const AsyncValue.data(null),
  });

  final AuthFormType formType;
  final AsyncValue<void> value;

  bool get isLoading => value.isLoading;

  AuthState copyWith({
    AuthFormType? formType,
    AsyncValue<void>? value,
  }) {
    return AuthState(
      formType: formType ?? this.formType,
      value: value ?? this.value,
    );
  }

  @override
  String toString() =>
      'EmailPasswordSignInState(formType: $formType, value: $value)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AuthState &&
        other.formType == formType &&
        other.value == value;
  }

  @override
  int get hashCode => formType.hashCode ^ value.hashCode;

  AuthFormType get secondaryActionFormType {
    if (formType == AuthFormType.register) {
      return AuthFormType.signIn;
    } else {
      return AuthFormType.register;
    }
  }

  bool canSubmitEmail(String email) {
    return emailSubmitValidator.isValid(email);
  }

  bool canSubmitName(String name) {
    return nameSubmitValidator.isValid(name);
  }

  bool canSubmitPassword(String password) {
    if (formType == AuthFormType.register) {
      return passwordRegisterSubmitValidator.isValid(password);
    }
    return passwordSignInSubmitValidator.isValid(password);
  }

  String? emailErrorText(String email) {
    final bool showErrorText = !canSubmitEmail(email);
    final String errorText = email.isEmpty
        ? AppStrings.emptyEmailErrorText
        : AppStrings.invalidEmailErrorText;
    return showErrorText ? errorText : null;
  }

  String? nameErrorText(String name) {
    final bool showErrorText = !canSubmitName(name);
    final String errorText =
        name.isEmpty ? AppStrings.emptyNameField : AppStrings.invalidName;
    return showErrorText ? errorText : null;
  }

  String? passwordErrorText(String password) {
    final bool showErrorText = !canSubmitPassword(password);
    final String errorText = password.isEmpty
        ? AppStrings.emptyPasswordErrorText
        : AppStrings.shortPassWordErrorText;
    return showErrorText ? errorText : null;
  }
}
