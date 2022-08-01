import 'package:flutter/material.dart';

import '../../../common/common_exports.dart';
import '../../../constants/constants_exports.dart';
import 'sign_in_components/auth_state.dart';
import 'sign_in_components/sign_up_screen_body.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EaKaziScaffold(
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: BackButton(
          onPressed: () => null, //TODO: IMPLEMENT BACK BUTTON FUNCTIONALITY
          color: AppColors.darkColor,
        ),
      ),
      body: const SignUpScreenBody(
        authFormType: AuthFormType.register,
      ),
    );
  }
}
