import 'package:flutter/material.dart';

import '../../../common/common_exports.dart';
import '../../../constants/constants_exports.dart';
import 'sign_in_components/sign_screen_body.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EaKaziScaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: BackButton(
          onPressed: () => null, //TODO: IMPLEMENT BACK BUTTON FUNCTIONALITY
          color: AppColors.darkColor,
        ),
      ),
      body: const SignInScreenBody(),
    );
  }
}
