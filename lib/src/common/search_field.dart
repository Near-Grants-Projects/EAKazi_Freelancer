import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(

        // padding: kDefaultPadding, //TODO: CHECK THIS
        width: double.infinity,
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular(15),
        // ),
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
      ),
    );
  }
}
