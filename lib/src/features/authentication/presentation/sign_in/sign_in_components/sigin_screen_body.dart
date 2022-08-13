import 'package:auto_route/auto_route.dart';
import 'package:ea_kazi/src/common/common_exports.dart';
import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:ea_kazi/src/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'sign_in_components_exports.dart';

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

  String get email => _emailController.text;
  String get password => _passwordController.text;

  @override
  void dispose() {
    _node.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  padding: kDefaultPadding,
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
                        onPressed: () => context.router.replace(
                          const DefaultWrapperRoute(),
                        ),
                        // TODO: IMPLEMENT FORM AUTHENETCIATION
                      ),
                      gapH2,
                      AlreadyHaveAccountCheck(
                        accountCheckTitle: AppStrings.dontHaveAccountText,
                        accountCheckNavText: AppStrings.signUpBtnText,
                        onPressed: () => context.router.replace(
                          const SignUpRoute(),
                        ),
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
  }
}
