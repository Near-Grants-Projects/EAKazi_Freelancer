import 'package:ea_kazi/src/common/common_exports.dart';
import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:flutter/material.dart';

import 'wallet_components/bank_form_widget.dart';

class SelectBankScreen extends StatelessWidget {
  const SelectBankScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: EaKaziAppBar(
          title: AppStrings.withdraw,
          actions: [
            IconButton(
              onPressed: () => null, //TODO: WORK ON THIS
              icon: const Icon(
                Icons.more_vert_outlined,
                color: AppColors.darkColor,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppConstants.kDefaultPadding,
          child: Column(
            children: [
              const ReusableWidget(
                title: "N20,600",
                subtitle: AppStrings.currentBalance,
              ),
              gapH6,
              const BankFormWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
