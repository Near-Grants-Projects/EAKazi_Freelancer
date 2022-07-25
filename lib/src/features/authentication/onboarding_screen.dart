import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:ea_kazi/src/features/authentication/auth_components/onboarding_page_data.dart';
import 'package:ea_kazi/src/utils/utils_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

final pageIndexProvider = StateProvider((ref) => 0);

class OnBoardingScreen extends ConsumerWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SizeConfig().init(context);

    void _setPageIndex(int index) {
      ref.watch(pageIndexProvider.notifier).state = index;
    }

    return Scaffold(
      // backgroundColor: Colors.amber,
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(Sizes.p20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              gapH12,
              SvgPicture.asset("assets/icons/logo.svg"),
              gapH6,
              Expanded(
                flex: 2,
                child: PageView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: onBoardingData.length,
                  onPageChanged: (value) => _setPageIndex(value),
                  itemBuilder: (_, index) => OnBoardingContent(
                    imagePath: onBoardingData[index].imagePath,
                    heading: onBoardingData[index].heading,
                    subHeading: onBoardingData[index].subHeading,
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        onBoardingData.length,
                        (index) => PageDots(index: index),
                      ),
                    ),
                    
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PageDots extends ConsumerWidget {
  const PageDots({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageIndex = ref.watch(pageIndexProvider);
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: Sizes.p8,
      width: pageIndex == index ? 20 : 20,
      decoration: BoxDecoration(
        color: Colors.black26,
        // color: pageIndex == index ? AppColors.darkTextColor : Colors.white,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Container(
        color: Colors.white,
        height: 4,
        width: 4,
      ),
    );
  }
}

class OnBoardingContent extends StatelessWidget {
  const OnBoardingContent({
    Key? key,
    required this.imagePath,
    required this.heading,
    required this.subHeading,
  }) : super(key: key);

  final String imagePath;
  final String heading;
  final String subHeading;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          imagePath,
        ),
        gapH6,
        SizedBox(
          width: 300,
          child: Text(
            heading,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        gapH2,
        Text(
          subHeading,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline6!.copyWith(
                color: AppColors.secondaryTextcolor,
              ),
        ),
      ],
    );
  }
}
