import 'package:flutter/material.dart';

import '../../../common/common_exports.dart';
import 'sign_in_components/auth_state.dart';
import 'sign_in_components/sign_up_screen_body.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const EaKaziScaffold(
      body: SignUpScreenBody(
        authFormType: AuthFormType.register,
      ),
    );
  }
}
