import 'package:ea_kazi/src/constants/app_colors.dart';
import 'package:ea_kazi/src/constants/app_sizes.dart';
import 'package:ea_kazi/src/constants/app_strings.dart';
import 'package:ea_kazi/src/utils/size_config.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  // Container(color: Colors.amberAccent),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 43,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () => null, //TODO: PERFORM BACK FUNCTIONALITY
                          child: const Icon(Icons.arrow_back),
                        ),
                        gapH12,
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
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 43,
                  horizontal: 16,
                ),
                child: Form(
                  child: Column(
                    children: [
                      const CustomTextFormField(
                        labelText: AppStrings.fullNameText,
                      ),
                      gapH2,
                      const CustomTextFormField(
                        labelText: AppStrings.emailAddressText,
                      ),
                      gapH2,
                      const CustomTextFormField(
                        labelText: AppStrings.fullNameText,
                      ),
                      gapH2,
                      CustomTextFormField(
                        labelText: AppStrings.passwordText,
                        suffix: SvgPicture.asset(
                          "assets/icons/hide.svg",
                        ),
                      ),
                      gapH6,
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () =>
                              null, // TODO: IMPLEMENT FORM AUTHENETCIATION
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(20),
                          ),
                          child: const Text(AppStrings.createAccountText),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 43,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () => null, //TODO: PERFORM BACK FUNCTIONALITY
                          child: const Icon(Icons.arrow_back),
                        ),
                        gapH12,
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
                padding: const EdgeInsets.symmetric(
                  vertical: 43,
                  horizontal: 16,
                ),
                child: Form(
                  child: Column(
                    children: [
                      const CustomTextFormField(
                        labelText: AppStrings.emailAddressText,
                      ),
                      gapH2,
                      CustomTextFormField(
                        labelText: AppStrings.passwordText,
                        suffix: SvgPicture.asset(
                          "assets/icons/hide.svg",
                        ),
                      ),
                      gapH16,
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () =>
                              null, // TODO: IMPLEMENT FORM AUTHENETCIATION
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(20),
                          ),
                          child: const Text(AppStrings.signIn),
                        ),
                      ),
                      gapH4,
                      Center(
                        child: RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.button!.copyWith(
                                  fontSize: 13,
                                ),
                            children: [
                              const TextSpan(text: "Don't have an account? "),
                              TextSpan(
                                text: AppStrings.signUpBtnText,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    ?.copyWith(
                                      fontSize: 13,
                                      color: AppColors.altTextColor,
                                    ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap =
                                      () {}, //TODO: IMPLEMENT NAVIGATION FUNCTIONALITY
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    required this.labelText,
    this.suffix,
    Key? key,
  }) : super(key: key);

  final String labelText;
  final Widget? suffix;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      decoration: const BoxDecoration(
        color: AppColors.textFormFieldColor,
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: TextFormField(
        cursorColor: AppColors.darkColor,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          suffix: suffix,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 5,
          ),
          border: InputBorder.none,
          labelText: labelText,
          labelStyle: Theme.of(context).textTheme.subtitle1!.copyWith(
                color: AppColors.secondaryColor,
              ),
        ),
      ),
    );
  }
}
