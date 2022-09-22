import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:ea_kazi/src/common/models/failure.dart';
import 'package:ea_kazi/src/constants/app_constants.dart';
import 'package:ea_kazi/src/features/authentication/core/api/signup/request/signup_request.dart';
import 'package:ea_kazi/src/features/authentication/core/api/signup/response/signup_response.dart';
import 'package:ea_kazi/src/features/authentication/core/repository/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

@injectable
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final AuthRepository _authRepository;

  final formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  final nameController = TextEditingController();

  bool isPasswordVisible = false;

  SignUpBloc(@Named(AppConstants.defaultRepositoriesImpl) this._authRepository)
      : super(const _Initial()) {
    on<_ToggleVisibilityEvent>((event, emit) {
      isPasswordVisible = !isPasswordVisible;

      emit(_PasswordVisibilityToggledState(isPasswordVisible));
    });

    on<_SignUpUserEvent>((event, emit) async {
      emit(const _LoadingState());

      List<String> nameArr = nameController.text.split(' ');

      final SignupRequest request = SignupRequest(
        firstName: nameArr[0],
        lastName: nameArr[nameArr.length - 1],
        email: emailController.text,
        password: passwordController.text,
        userRole: 'trainee',
      );

      final Either<Failure, SignupResponse> response =
          await _authRepository.registerUser(requestBody: request);

      response.fold((failure) {
        emit(_ErrorState(failure.message, DateTime.now()));
      }, (result) {
        emit(const _SuccessState());
      });
    });
  }
}
