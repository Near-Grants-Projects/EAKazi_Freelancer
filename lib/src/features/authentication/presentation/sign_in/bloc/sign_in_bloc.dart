import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:ea_kazi/src/common/models/failure.dart';
import 'package:ea_kazi/src/constants/app_constants.dart';
import 'package:ea_kazi/src/features/authentication/core/api/signin/request/sign_in_request.dart';
import 'package:ea_kazi/src/features/authentication/core/api/signin/response/sign_in_response.dart';
import 'package:ea_kazi/src/features/authentication/core/repository/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final AuthRepository _authRepository;

  final formKey = GlobalKey<FormState>();

  final node = FocusScopeNode();

  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  bool isPasswordVisible = false;

  SignInBloc(@Named(AppConstants.defaultRepositoriesImpl) this._authRepository)
      : super(const _Initial()) {
    on<_ToggleVisibilityEvent>((event, emit) {
      isPasswordVisible = !isPasswordVisible;

      emit(_PasswordVisibilityToggledState(isPasswordVisible));
    });

    on<_PerformSignInEvent>((event, emit) async {
      emit(const _LoadingState());

      final SignInRequest request = SignInRequest(
        email: emailController.text,
        password: passwordController.text,
      );

      final Either<Failure, SignInResponse> response =
          await _authRepository.signInUser(requestBody: request);

      response.fold((failure) {
        emit(_ErrorState(failure.message, DateTime.now()));
      }, (result) {
        emit(const _SuccessState());
      });
    });
  }
}
