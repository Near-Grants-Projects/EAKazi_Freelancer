import 'package:auto_route/auto_route.dart';
import 'package:ea_kazi/src/common/common_exports.dart';
import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:ea_kazi/src/features/authentication/presentation/sign_in/bloc/sign_in_bloc.dart';
import 'package:ea_kazi/src/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'sign_in_components_exports.dart';

class SignInScreenBody extends StatelessWidget {
  const SignInScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(
      builder: (context, state) {
        final SignInBloc bloc = BlocProvider.of<SignInBloc>(context);

        return Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      padding: AppConstants.kDefaultPadding,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AppAssetPaths.backgroundImage),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          gapH8,
                          Text(
                            AppStrings.signIn,
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
                Padding(
                  padding: AppConstants.kDefaultPadding,
                  child: FocusScope(
                    node: bloc.node,
                    child: Form(
                      key: bloc.formKey,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      child: Column(
                        children: [
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
                            obscureText: true,
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
                                bloc.add(const SignInEvent.toggleVisibilityEvent());
                              },
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: CustomTextButton(
                              buttonText: AppStrings.forgotPasswordText,
                              onPressed: () {
                                //TODO:IMPLEMENT FORGOT PASSWORD FUNCTIONALITY
                              },
                            ),
                          ),
                          gapH6,
                          PrimaryButton(
                            text: AppStrings.signIn,
                            onPressed: () {
                              bloc.add(const SignInEvent.performSignInEvent());
                            },
                          ),
                          gapH2,
                          AlreadyHaveAccountCheck(
                            accountCheckTitle: AppStrings.dontHaveAccountText,
                            accountCheckNavText: AppStrings.signUpBtnText,
                            onPressed: () => context.pushRoute(const SignUpRoute()),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
