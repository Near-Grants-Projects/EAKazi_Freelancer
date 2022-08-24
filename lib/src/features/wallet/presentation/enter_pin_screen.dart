import 'package:ea_kazi/src/common/common_exports.dart';
import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:flutter/material.dart';

import 'wallet_components/custom_pin_box.dart';

class EnterPinScreen extends StatelessWidget {
  const EnterPinScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => null, //TODO: WORK ON THIS
            icon: const Icon(
              Icons.more_vert_outlined,
              color: AppColors.darkColor,
            ),
          )
        ],
        title: Text(
          AppStrings.withdraw,
          style: Theme.of(context).textTheme.headline6,
        ),
        leading: BackButton(
          onPressed: () => null, //TODO: IMPLEMENT BACK BUTTON FUNCTIONALITY
          color: AppColors.darkColor,
        ),
      ),
      body: Padding(
        padding: kDefaultPadding,
        child: Center(
          child: Column(
            children: [
              Text(
                AppStrings.enterPin,
                style: Theme.of(context).textTheme.headline6,
              ),
              gapH2,
              Text(
                AppStrings.enterPinHelperText,
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: AppColors.secondaryColor,
                    ),
              ),
              gapH8,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  Sizes.p4.toInt(),
                  (index) => const CustomPinBox(),
                ),
              ),
              gapH12,
              PrimaryButton(
                text: AppStrings.next,
                onPressed: () => null, //TODO: WORK ON THIS
              )
            ],
          ),
        ),
      ),
    );
  }
}
