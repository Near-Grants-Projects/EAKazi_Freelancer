import 'package:auto_route/auto_route.dart';
import 'package:ea_kazi/src/common/common_exports.dart';
import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:ea_kazi/src/features/authentication/presentation/sign_in/sign_in_components/sign_in_components_exports.dart';
import 'package:ea_kazi/src/features/authentication/presentation/sign_up/bloc/sign_up_bloc.dart';
import 'package:ea_kazi/src/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpScreenBody extends StatelessWidget {
  const SignUpScreenBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        final SignUpBloc bloc = BlocProvider.of<SignUpBloc>(context);

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(AppAssetPaths.backgroundImage),
                ),
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: AppConstants.kDefaultPadding,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        gapH8,
                        Text(
                          AppStrings.signUp,
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        gapH2,
                        Text(
                          AppStrings.signUpSubtitleText,
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: AppConstants.kDefaultPadding,
              child: Form(
                key: bloc.formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  children: [
                    CustomTextFormField(
                      controller: bloc.nameController,
                      labelText: AppStrings.fullNameText,
                      inputFormatters: <TextInputFormatter>[
                        ValidatorInputFormatter(
                          editingValidator: NonEmptyStringValidator(),
                        ),
                      ],
                    ),
                    gapH2,
                    CustomTextFormField(
                      controller: bloc.emailController,
                      labelText: AppStrings.emailAddressText,
                      inputFormatters: <TextInputFormatter>[
                        ValidatorInputFormatter(
                          editingValidator: EmailEditingRegexValidator(),
                        ),
                      ],
                    ),
                    gapH2,
                    CustomTextFormField(
                      controller: bloc.passwordController,
                      obscureText: state.maybeWhen(
                        passwordVisibilityToggledState: (isVisible) => isVisible,
                        orElse: () => true,
                      ),
                      labelText: AppStrings.passwordText,
                      textInputAction: TextInputAction.done,
                      inputFormatters: <TextInputFormatter>[
                        ValidatorInputFormatter(
                          editingValidator: NonEmptyStringValidator(),
                        ),
                      ],
                      suffixIcon: IconButton(
                        icon: Icon(
                          state.maybeWhen(
                            passwordVisibilityToggledState: (isVisible) =>
                                isVisible ? Icons.visibility_off : Icons.visibility,
                            orElse: () => Icons.visibility_off,
                          ),
                          color: AppColors.secondaryColor,
                        ),
                        onPressed: () {
                          bloc.add(const SignUpEvent.toggleVisibilityEvent());
                        },
                      ),
                    ),
                    gapH6,
                    PrimaryButton(
                      text: AppStrings.createAccountText,
                      onPressed: () {
                        bloc.add(const SignUpEvent.signUpUserEvent());
                      },
                    ),
                    gapH2,
                    AlreadyHaveAccountCheck(
                      accountCheckTitle: AppStrings.alreadyHaveAccountText,
                      accountCheckNavText: AppStrings.signIn,
                      onPressed: () => context.pushRoute(
                        const SignInRoute(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
