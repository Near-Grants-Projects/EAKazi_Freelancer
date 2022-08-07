// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ea_kazi/src/common/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:ea_kazi/src/common/common_exports.dart';
import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:ea_kazi/src/features/home/home_screen.dart';
import 'package:ea_kazi/src/utils/utils_exports.dart';

class JobsScreen extends StatelessWidget {
  const JobsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return EaKaziScaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppStrings.jobs,
          style: Theme.of(context).textTheme.headline6,
        ),
        leading: BackButton(
          onPressed: () => null, //TODO: IMPLEMENT BACK BUTTON FUNCTIONALITY
          color: AppColors.darkColor,
        ),
      ),
      body: Column(
        children: [
          const SearchField(),
          gapH2,
          SizedBox(
            height: 50,
            child: ListView.builder(
              primary: false,
              scrollDirection: Axis.horizontal,
              itemCount: categoryData.length,
              itemBuilder: (_, index) => CategoryItem(
                title: categoryData[index].title,
                imagePath: categoryData[index].imagePath,
                onPressed: () => null,
                //TODO: SORT THIS ONPRESSED IMPLEMENTATION
              ),
            ),
          ),
          gapH4,
          ReusableCard(
            margin: kDefaultPadding / 2,
            imagePath: AppAssetPaths.googleIcon,
            title: "Jelafrica",
            subtitle: "UI/UX Designer",
            altText: "UI/UX Design Certificate required",
            auxilliarytext: "• N200,000",
            altWidget: Text(
              "Today",
              style: Theme.of(context).textTheme.caption!.copyWith(
                    color: AppColors.secondaryColor,
                  ),
            ),
          ),
          ReusableCard(
            margin: kDefaultPadding / 2,
            imagePath: AppAssetPaths.googleIcon,
            title: "Jelafrica",
            subtitle: "UI/UX Designer",
            altText: "UI/UX Design Certificate required",
            auxilliarytext: "• N200,000",
          ),
          ReusableCard(
            margin: kDefaultPadding / 2,
            imagePath: AppAssetPaths.googleIcon,
            title: "Jelafrica",
            subtitle: "UI/UX Designer",
            altText: "UI/UX Design Certificate required",
            auxilliarytext: "• N200,000",
          ),
          ReusableCard(
            margin: kDefaultPadding / 2,
            imagePath: AppAssetPaths.googleIcon,
            title: "Jelafrica",
            subtitle: "UI/UX Designer",
            altText: "UI/UX Design Certificate required",
            auxilliarytext: "• N200,000",
          ),
          ReusableCard(
            margin: kDefaultPadding / 2,
            imagePath: AppAssetPaths.googleIcon,
            title: "Jelafrica",
            subtitle: "UI/UX Designer",
            altText: "UI/UX Design Certificate required",
            auxilliarytext: "• N200,000",
          ),
          ReusableCard(
            margin: kDefaultPadding / 2,
            imagePath: AppAssetPaths.googleIcon,
            title: "Jelafrica",
            subtitle: "UI/UX Designer",
            altText: "UI/UX Design Certificate required",
            auxilliarytext: "• N200,000",
          ),
        ],
      ),
    );
  }
}
