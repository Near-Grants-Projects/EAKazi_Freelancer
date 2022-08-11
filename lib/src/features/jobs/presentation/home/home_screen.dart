import 'package:ea_kazi/src/common/common_exports.dart';
import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:flutter/material.dart';

import 'home_components/categories.dart';
import 'home_components/get_started_options.dart';
import 'home_components/recommendation_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: kDefaultPadding,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //TODO: TURN TO TEMPLATE TEXT AND GET TEXT FROM API
                  Text(
                    "Hi, Mary",
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  InkWell(
                    onTap: () => null, //TODO:BUTTON FUNCTIONALITY,
                    child: const Icon(Icons.more_horiz),
                  ),
                ],
              ),
            ),
            const SearchField(),
            gapH2,
            const GetStartedOptions(),
            gapH2,
            const Categories(),
            const RecommendationWidget(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Sizes.p16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const ReusableCardWidget(
                    imagePath: AppAssetPaths.googleIcon,
                    title: "Google",
                    subtitle: "Visual Designer - UI Designer",
                    altText: "Remote",
                    auxilliarytext: "3hrs ago •",
                  ),
                  gapH2,
                  const ReusableCardWidget(
                    imagePath: "assets/icons/eapesa.svg",
                    title: "EA Pesa",
                    subtitle: "Visual Designer - UI Designer",
                    altText: "Mwanza, Tanzania • Full Time",
                    auxilliarytext: "3hrs ago •",
                  ),
                  gapH2,
                  const ReusableCardWidget(
                    imagePath: "assets/icons/eakazi.svg",
                    title: "EA Kazi",
                    subtitle: "Visual Designer - UI Designer",
                    altText: "Nairobi, Kenya • Full Time",
                    auxilliarytext: "3hrs ago •",
                  ),
                  gapH6,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}