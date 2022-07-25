import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:flutter/material.dart';

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
        onPressed: () => null, // TODO: IMPLEMENT NEXT PAGE NAVIGATION
      ),
    );
  }
}
