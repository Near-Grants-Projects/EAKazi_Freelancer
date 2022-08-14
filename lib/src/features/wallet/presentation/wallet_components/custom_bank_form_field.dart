import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:flutter/material.dart';

class BankCustomFormField extends StatelessWidget {
  const BankCustomFormField({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.subtitle1,
        ),
        gapH2,
        TextFormField(
          keyboardType: TextInputType.name,
          autocorrect: false,
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(
              horizontal: Sizes.p12,
              vertical: Sizes.p6,
            ),
            border: OutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}
