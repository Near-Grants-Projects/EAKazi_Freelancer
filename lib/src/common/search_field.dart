import 'package:flutter/material.dart';

import '../constants/constants_exports.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.p20),
      width: double.infinity,
      decoration: BoxDecoration(
        // color: kSecondaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        onChanged: (value) => print(value),
        decoration: const InputDecoration(
          // contentPadding: EdgeInsets.symmetric(
          //     horizontal: getProportionateScreenWidth(20),
          //     vertical: getProportionateScreenWidth(9)),
          border: OutlineInputBorder(
              // borderRadius: BorderRadius.all(
              //   Radius.circular(5),
              // ),
              ),
          focusedBorder: OutlineInputBorder(
              // borderRadius: BorderRadius.all(
              // Radius.circular(5),
              // ),
              ),
          enabledBorder: OutlineInputBorder(
              // borderRadius: BorderRadius.all(
              //   Radius.circular(5),
              // ),
              ),
          hintText: "e.g Game development jobs... ",
          suffixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
}