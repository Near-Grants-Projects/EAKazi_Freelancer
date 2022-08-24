import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:flutter/material.dart';

class ErrorMessageWidget extends StatelessWidget {
  //TODO: REMEBER TO CREATE A BETTER ERROR WIDGET SUBSEQUENTLY
  const ErrorMessageWidget({
    Key? key,
    required this.errorMessage,
  }) : super(key: key);

  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errorMessage,
        style: Theme.of(context).textTheme.bodyText1!.copyWith(
              color: AppColors.scaffoldBgColor,
            ),
      ),
    );
  }
}
