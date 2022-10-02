import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) => print(value),
      cursorColor: AppColors.lightGrey,
      decoration: const InputDecoration(
        hintStyle: TextStyle(
          fontSize: Sizes.p14,
          fontWeight: FontWeight.w500,
          color: AppColors.lightGrey,
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: Sizes.p16, vertical: Sizes.p12),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.lightGrey),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.lightGrey),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.lightGrey),
        ),
        hintText: "e.g Game development jobs... ",
        suffixIcon: Icon(
          Icons.search,
          color: AppColors.lightGrey,
        ),
      ),
    );
  }
}
