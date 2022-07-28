import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../constants/constants_exports.dart';
import '../../../utils/utils_exports.dart';
import 'sign_in_components/sign_screen_body.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: Sizes.p0,
        backgroundColor: AppColors.transparentColor,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
          statusBarColor: Colors.transparent,
          systemNavigationBarColor: AppColors.darkColor,
          systemNavigationBarIconBrightness: Brightness.dark,
        ),
        leading: BackButton(
          onPressed: () => null, //TODO: IMPLEMENT BACK BUTTON FUNCTIONALITY
          color: AppColors.darkColor,
        ),
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: SignInScreenBody(),
        ),
      ),
    );
  }
}
