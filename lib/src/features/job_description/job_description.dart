import 'package:ea_kazi/src/common/common_exports.dart';
import 'package:ea_kazi/src/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../constants/constants_exports.dart';

final indexProvider = StateProvider((ref) => 0);

class JobDescriptionScreen extends StatelessWidget {
  const JobDescriptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return EaKaziScaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppStrings.jobDetails,
          style: Theme.of(context).textTheme.headline6,
        ),
        leading: BackButton(
          onPressed: () => null, //TODO: IMPLEMENT BACK BUTTON FUNCTIONALITY
          color: AppColors.darkColor,
        ),
      ),
      body: Padding(
        padding: kDefaultPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                padding: kDefaultPadding,
                height: SizeConfig.blockSizeVertical * Sizes.p12,
                width: SizeConfig.blockSizeHorizontal * Sizes.p24,
                decoration: BoxDecoration(
                  color: AppColors.scaffoldBgColor,
                  borderRadius: BorderRadius.circular(
                    SizeConfig.blockSizeVertical * Sizes.p12,
                  ),
                  boxShadow: AppConstants.defaultBoxShadow,
                ),
                child: Center(
                  child: Image.asset(
                    "assets/images/j.png",
                    scale: .5,
                  ),
                ), //TODO: CHANGE LATER
              ),
            ),
            gapH2,
            Center(
              child: Text(
                "UI Designer",
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Center(
              child: Text(
                "Jelafrica - Nigeria - Fulltime",
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: AppColors.secondaryColor,
                    ),
              ),
            ),
            gapH2,
            // Container(
            //   height: 500,
            //   // flex: 2,
            //   child: PageView.builder(
            //     // scrollDirection: Axis.vertical,
            //     physics: const NeverScrollableScrollPhysics(),
            //     itemCount: jobDetails.length,
            //     itemBuilder: (_, index) => Container(
            //       decoration: BoxDecoration(
            //         color: AppColors.scaffoldBgColor,
            //         borderRadius: BorderRadius.circular(Sizes.p10),
            //         boxShadow: AppConstants.defaultBoxShadow,
            //       ),
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         crossAxisAlignment: CrossAxisAlignment.center,
            //         children: List.generate(
            //           jobDetails.length,
            //           (index) => Labels(
            //             index: index,
            //           ),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            Container(
              decoration: BoxDecoration(
                color: AppColors.scaffoldBgColor,
                borderRadius: BorderRadius.circular(Sizes.p10),
                boxShadow: AppConstants.defaultBoxShadow,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: List.generate(
                  jobDetails.length,
                  (index) => Labels(
                    index: index,
                  ),
                ),
              ),
            ),
            // gapH4,
            // Text(
            //   "Job Description",
            //   style: Theme.of(context).textTheme.headline6,
            // ),
            // gapH2,
            // Text(
            //   "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ac placerat lectus. Morbi vestibulum nulla nec leo tincidunt, non imperdiet ex aliquet. Donec quis lacus libero. Fusce ac eros nisl. Maecenas vestibulum magna id ante tempor posuere. Phasellus volutpat orci eget sollicitudin pellentesque. Mauris pretium in purus sed blandit.",
            //   style: Theme.of(context).textTheme.bodyText2,
            //   textAlign: TextAlign.justify,
            // ),
            // gapH2,
            // Text(
            //   "Skills Required",
            //   style: Theme.of(context).textTheme.headline6,
            // ),
            // gapH2,
            // Text(
            //   "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ac placerat lectus. Morbi vestibulum nulla nec leo tincidunt, non imperdiet ex aliquet. Donec quis lacus libero. Fusce ac eros nisl. Maecenas vestibulum magna id ante tempor posuere. Phasellus volutpat orci eget sollicitudin pellentesque. Mauris pretium in purus sed blandit.",
            //   style: Theme.of(context).textTheme.bodyText2,
            //   textAlign: TextAlign.justify,
            // ),
            // gapH4,
            // PrimaryButton(
            //   onPressed: () => null, //TODO:
            //   text: AppStrings.applyNow,
            // )
          ],
        ),
      ),
    );
  }
}

// List<OnBoardingModel> onBoardingData = [
//   OnBoardingModel(
//     imagePath: "assets/icons/logo.svg",
//     heading: AppStrings.firstPageHeadingText,
//     subHeading: AppStrings.firstPageSubHeadingText,
//   ),
//   OnBoardingModel(
//     imagePath: "assets/icons/logo.svg",
//     heading: AppStrings.secondPageHeadingText,
//     subHeading: AppStrings.secondPageSubHeadingText,
//   ),
//   OnBoardingModel(
//     imagePath: "assets/icons/logo.svg",
//     heading: AppStrings.thirdPageHeadingText,
//     subHeading: AppStrings.thirdPageSubHeadingText,
//   ),
// ];

// PageView.builder(
//                   scrollDirection: Axis.horizontal,
//                   itemCount: onBoardingData.length,
//                   onPageChanged: (value) => _setPageIndex(value),
//                   itemBuilder: (_, index) => OnBoardingContent(
//                     imagePath: onBoardingData[index].imagePath,
//                     heading: onBoardingData[index].heading,
//                     subHeading: onBoardingData[index].subHeading,
//                   ),
//                 ),
//               ),
class AssesmentSection extends StatelessWidget {
  const AssesmentSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Assessment",
          style: Theme.of(context).textTheme.headline6,
        ),
        const Text(
          "To apply for this job you need to take the assessment course, pass the quiz and get a certificate to proove proficiency.To apply for this job you need to take the assessment course, pass the quiz and get a certificate to prove proficiency.",
        ),
        gapH4,
        OutlinedButton(
          onPressed: () => null,
          child: const Text(
            AppStrings.assessmentQuiz,
          ),
        ),
        const PrimaryButton(
          text: AppStrings.takeCourse,
        )
      ],
    );
  }
}

class Labels extends ConsumerWidget {
  const Labels({
    required this.index,
    Key? key,
  }) : super(key: key);

  final int index;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(indexProvider);
    void _setIndex(int index) => ref.watch(indexProvider.notifier).state = index;

    return Column(
      children: [
        AnimatedContainer(
          duration: AppConstants.kAnimationDuration,
          padding: const EdgeInsets.all(Sizes.p4),
          decoration: BoxDecoration(
            color: index == selectedIndex ? AppColors.darkColor : Colors.transparent,
            borderRadius: BorderRadius.circular(Sizes.p6),
          ),
          child: TextButton(
            onPressed: () => _setIndex(index),
            child: Text(
              jobDetails[index],
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color: index == selectedIndex
                        ? AppColors.scaffoldBgColor
                        : AppColors.secondaryColor,
                  ),
            ),
          ),
        ),
        SizedBox(
          height: 500,
          // flex: 2,
          child: PageView.builder(
            // scrollDirection: Axis.vertical,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: jobDetails.length,
            itemBuilder: (_, index) => Container(
              decoration: BoxDecoration(
                color: AppColors.scaffoldBgColor,
                borderRadius: BorderRadius.circular(Sizes.p10),
                boxShadow: AppConstants.defaultBoxShadow,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: List.generate(sections.length, (index) => sections[index]),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

List<String> jobDetails = [
  AppStrings.description,
  AppStrings.assessment,
  AppStrings.aboutUs,
];

List<Widget> sections = const [
  AssesmentSection(),
];
