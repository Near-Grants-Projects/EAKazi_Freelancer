import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../common/common_exports.dart';
import '../../../../constants/constants_exports.dart';
import 'already_have_account_check.dart';
import 'custom_text_button.dart';
import 'custom_textform_field.dart';
import 'string_validators.dart';

class SignInScreenBody extends StatefulWidget {
  const SignInScreenBody({Key? key}) : super(key: key);

  @override
  State<SignInScreenBody> createState() => _SignInScreenBodyState();
}

class _SignInScreenBodyState extends State<SignInScreenBody> {
  final _formKey = GlobalKey<FormState>();

  final _node = FocusScopeNode();

  final _emailController = TextEditingController();

  final _passwordController = TextEditingController();

  // var _submitted = false;

  String get email => _emailController.text;
  String get password => _passwordController.text;

  // void _emailEditingComplete(AuthState state) {
  //   if (state.canSubmitEmail(email)) {
  //     _node.nextFocus();
  //   }
  // }

  // void _passwordEditingComplete(AuthState state) {
  //   if (!state.canSubmitEmail(email)) {
  //     _node.previousFocus();
  //     return;
  //   }
  //   // _submit(state);
  // }

  @override
  void dispose() {
    _node.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Image.asset(
              "assets/images/bbg.png",
              fit: BoxFit.fill,
            ),
            Padding(
              padding: kDefaultPadding,
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
          padding: kDefaultPadding,
          child: FocusScope(
            node: _node,
            child: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  CustomTextFormField(
                    controller: _emailController,
                    labelText: AppStrings.emailAddressText,
                    inputFormatters: <TextInputFormatter>[
                      ValidatorInputFormatter(
                        editingValidator: EmailEditingRegexValidator(),
                      ),
                    ],
                  ),
                  gapH2,
                  CustomTextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    labelText: AppStrings.passwordText,
                    textInputAction: TextInputAction.done,
                    inputFormatters: <TextInputFormatter>[
                      ValidatorInputFormatter(
                        editingValidator: NonEmptyStringValidator(),
                      ),
                    ],
                    suffixIcon: IconButton(
                      icon: const Icon(
                        Icons.visibility,
                        color: AppColors.secondaryColor,
                      ),
                      onPressed: () => null,
                    ), //TODO IMPLEMENT VISIBILITY TOGGLE
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: CustomTextButton(
                      buttonText: AppStrings.forgotPasswordText,
                      onPressed: () => null,
                      //TODO:IMPLEMENT FORGOT PASSWORD FUNCTIONALITY
                    ),
                  ),
                  gapH6,
                  PrimaryButton(
                    text: AppStrings.signIn,
                    onPressed: () => null,
                    // TODO: IMPLEMENT FORM AUTHENETCIATION
                  ),
                  gapH2,
                  AlreadyHaveAccountCheck(
                    accountCheckTitle: AppStrings.dontHaveAccountText,
                    accountCheckNavText: AppStrings.signUpBtnText,
                    onPressed: () =>
                        null, //TODO: IMPLEMENT NAVIGATION FUNCTIONALITY
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
