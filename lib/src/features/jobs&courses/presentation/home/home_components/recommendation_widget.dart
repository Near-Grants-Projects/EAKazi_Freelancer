import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:flutter/material.dart';

class RecommendationWidget extends StatelessWidget {
  const RecommendationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kDefaultPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            AppStrings.recommended,
            style: Theme.of(context).textTheme.subtitle1,
          ),
          TextButton(
            onPressed: () => null,
            //TODO: IMPLEMENT SEE ALL RECOMMENDATIONS
            child: Text(
              AppStrings.seeAll,
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
        ],
      ),
    );
  }
}
