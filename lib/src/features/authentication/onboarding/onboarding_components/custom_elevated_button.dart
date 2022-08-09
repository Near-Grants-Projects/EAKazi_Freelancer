import 'package:auto_route/auto_route.dart';
import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:flutter/material.dart';
import 'package:ea_kazi/src/routes/router.gr.dart';

/// TODO: CHANGE THE MATERIAL PAGE ROUTE TO AUTO ROUTE AND CHECK IF THIS
/// TODO:IS THE FIRST TIME A USER OPENED THE APP

class CustomRoundElevatedButton extends StatelessWidget {
  const CustomRoundElevatedButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Sizes.p64,
      width: Sizes.p64,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: AppColors.btnColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Sizes.p32),
          ),
        ),
        child: const Icon(Icons.arrow_forward),
        onPressed: () => context.router.replace(const SignUpRoute()),
      ),
    );
  }
}
