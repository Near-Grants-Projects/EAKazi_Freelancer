import 'package:flutter/material.dart';

import 'sign_in_components/sigin_screen_body.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SignInScreenBody(),
    );
  }
}