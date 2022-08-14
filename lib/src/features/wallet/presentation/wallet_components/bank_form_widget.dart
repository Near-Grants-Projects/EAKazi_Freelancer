import 'package:ea_kazi/src/common/common_exports.dart';
import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:flutter/material.dart';

import '../controllers/wallet_controller.dart';
import 'custom_bank_form_field.dart';

class BankFormWidget extends StatelessWidget {
  const BankFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.selectBank,
            style: Theme.of(context).textTheme.subtitle1,
          ),
          gapH2,
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: Sizes.p16,
              vertical: Sizes.p4,
            ),
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.secondaryColor),
              borderRadius: BorderRadius.circular(Sizes.p6),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                // Initial Value
                hint: Text(
                  AppStrings.selectBank,
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        color: AppColors.secondaryColor,
                      ),
                ),
                // value: selectedValue,
                // Down Arrow Icon
                icon: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: Sizes.p18,
                  color: AppColors.secondaryColor,
                ),

                // Array list of items
                items: items.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (_) {},
              ),
            ),
          ),
          gapH4,
          const BankCustomFormField(
            title: AppStrings.accountNumber,
          ),
          gapH4,
          const BankCustomFormField(
            title: AppStrings.ammount,
          ),
          gapH4,
          const BankCustomFormField(
            title: AppStrings.description,
          ),
          gapH6,
          PrimaryButton(
            text: AppStrings.next,
            onPressed: () => null, //TODO: WORK ON THIS
          )
        ],
      ),
    );
  }
}
