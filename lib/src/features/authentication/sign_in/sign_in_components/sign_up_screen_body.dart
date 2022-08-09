import 'package:auto_route/auto_route.dart';
import 'package:ea_kazi/src/common/common_exports.dart';
import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:ea_kazi/src/features/authentication/sign_in/sign_in_screen.dart';
import 'package:ea_kazi/src/features/home/home_screen.dart';
import 'package:ea_kazi/src/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'sign_in_components_exports.dart';

class SignUpScreenBody extends StatefulWidget {
  const SignUpScreenBody({
    Key? key,
  }) : super(key: key);
  @override
  State<SignUpScreenBody> createState() => _SignUpScreenBodyState();
}

class _SignUpScreenBodyState extends State<SignUpScreenBody> {
  final _formKey = GlobalKey<FormState>();

  final _node = FocusScopeNode();

  final _emailController = TextEditingController();

  final _passwordController = TextEditingController();

  final _nameController = TextEditingController();

  String get email => _emailController.text;
  String get password => _passwordController.text;
  String get name => _nameController.text;

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
              image: AssetImage(AppAssetPaths.backgroundImage),
            ),
          ),
          child: Stack(
            children: [
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
                      onPressed: () => context.router.replace(const HomeRoute())
                      // TODO: IMPLEMENT FORM AUTHENETCIATION
                      ),
                  gapH2,
                  AlreadyHaveAccountCheck(
                    accountCheckTitle: AppStrings.alreadyHaveAccountText,
                    accountCheckNavText: AppStrings.signIn,
                    onPressed: () => context.router.replace(
                      const SignInRoute(),
                    ),
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
