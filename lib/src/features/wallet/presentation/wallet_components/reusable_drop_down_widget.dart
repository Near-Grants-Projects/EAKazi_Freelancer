import 'package:flutter/material.dart';
import 'package:ea_kazi/src/constants/constants_exports.dart';

class ReusableDropDownWidget extends StatelessWidget {
  const ReusableDropDownWidget({
    Key? key,
    required this.hintText,
    required this.items,
  }) : super(key: key);

  final String hintText;
  final List<DropdownMenuItem<Object>> items;

  @override
  Widget build(BuildContext context) {
    return Container(
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
            hintText,
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
          items: items,
          // After selecting the desired option,it will
          // change button value to selected value
          onChanged: (_) {},
        ),
      ),
    );
  }
}
