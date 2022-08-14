import 'package:ea_kazi/src/common/common_exports.dart';
import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:ea_kazi/src/utils/utils_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'controllers/wallet_controller.dart';
import 'select_bank_screen.dart';
import 'wallet_components/reusable_drop_down_widget.dart';

class WithdrawScreen extends ConsumerWidget {
  const WithdrawScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SizeConfig().init(context);
    return EaKaziScaffold(
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
      body: Padding(
        padding: kDefaultPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ReusableWidget(
              title: "N20,600", //TODO: IMPLEMENT API
              subtitle: AppStrings.currentBalance,
            ),
            gapH4,
            Text(
              AppStrings.selectAsset,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            gapH2,
            //TODO: IMPLEMENT API
            ReusableDropDownWidget(
              hintText: AppStrings.selectIntrests,
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
            ),
            gapH6,
            PrimaryButton(
              text: AppStrings.next,
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const SelectBankScreen(),
                ),
              ), //TODO: WORK ON THIS
            )
          ],
        ),
      ),
    );
  }
}
