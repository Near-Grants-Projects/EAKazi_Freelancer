import 'package:ea_kazi/src/features/authentication/sign_in/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../common/common_exports.dart';
import '../../../../constants/constants_exports.dart';
import '../../../home/home_screen.dart';
import 'already_have_account_check.dart';
import 'auth_state.dart';
import 'custom_textform_field.dart';
import 'string_validators.dart';

class SignUpScreenBody extends StatefulWidget {
  const SignUpScreenBody({
    Key? key,
    required this.authFormType,
  }) : super(key: key);

  final AuthFormType authFormType;
  @override
  State<SignUpScreenBody> createState() => _SignUpScreenBodyState();
}

class _SignUpScreenBodyState extends State<SignUpScreenBody> {
  final _formKey = GlobalKey<FormState>();

  final _node = FocusScopeNode();

  final _emailController = TextEditingController();

  final _passwordController = TextEditingController();

  final _nameController = TextEditingController();

  // var _submitted = false;

  String get email => _emailController.text;
  String get password => _passwordController.text;
  String get name => _nameController.text;

  // void _emailEditingComplete(AuthState state) {
  //   if (state.canSubmitEmail(email)) {
  //     _node.nextFocus();
  //   }
  // }

  // void _nameEditingComplete(AuthState state) {
  //   if (!state.canSubmitName(name)) {
  //     _node.nextFocus();
  //     return;
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
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/Rectangle 16.png"),
            ),
          ),
          child: Stack(
            children: [
              // SvgPicture.asset(AppAssetPaths.background),
              Padding(
                padding: kDefaultPadding,
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
          padding: kDefaultPadding,
          child: FocusScope(
            node: _node,
            child: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  CustomTextFormField(
                    controller: _nameController,
                    labelText: AppStrings.fullNameText,
                    //TODO: IMPLEMENT VALIDATORS AND ONCOMPLETE AFTER SETTING UP CONTROLLER
                    inputFormatters: <TextInputFormatter>[
                      ValidatorInputFormatter(
                        editingValidator: NonEmptyStringValidator(),
                      ),
                    ],
                  ),
                  gapH2,
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
                  gapH6,
                  PrimaryButton(
                    text: AppStrings.createAccountText,
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const HomeScreen(),
                      ),
                    ),
                    // TODO: IMPLEMENT FORM AUTHENETCIATION
                  ),
                  gapH2,
                  AlreadyHaveAccountCheck(
                    accountCheckTitle: AppStrings.alreadyHaveAccountText,
                    accountCheckNavText: AppStrings.signIn,
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const SignInScreen(),
                      ),
                    ),
                    //TODO: IMPLEMENT NAVIGATION FUNCTIONALITY
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
