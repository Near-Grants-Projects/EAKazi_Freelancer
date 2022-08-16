import 'package:ea_kazi/src/common/common_exports.dart';
import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:ea_kazi/src/features/courses/courses.dart';
import 'package:ea_kazi/src/features/job_description/job_description.dart';
import 'package:ea_kazi/src/features/job_description/jobs_screen.dart';
import 'package:ea_kazi/src/features/profile/profile_screen.dart';
import 'package:ea_kazi/src/features/wallet/wallet_screen.dart';
import 'package:ea_kazi/src/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

final bottomNavIndexProvider = StateProvider((ref) => 0);

const pages = [
  HomeScreen(),
  WalletScreen(),
  AlertsScreen(),
  ProfileScreen(),
];

class DefaultLayout extends ConsumerWidget {
  const DefaultLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bottomNavIndex = ref.watch(bottomNavIndexProvider);

    void _setBottomNavIndex(int index) => ref.watch(bottomNavIndexProvider.notifier).state = index;

    SizeConfig().init(context);
    return EaKaziScaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: Sizes.p0,
        backgroundColor: AppColors.scaffoldBgColor,
        currentIndex: bottomNavIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (index) => _setBottomNavIndex(index),
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppAssetPaths.homeNavIcon),
            activeIcon: SvgPicture.asset(
              AppAssetPaths.homeNavIcon,
              color: AppColors.blue500,
            ),
            label: AppStrings.emptyString,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppAssetPaths.walletNavIcon),
            activeIcon: SvgPicture.asset(
              AppAssetPaths.walletNavIcon,
              color: AppColors.blue500,
            ),
            label: AppStrings.emptyString,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppAssetPaths.alertNavIcon),
            activeIcon: SvgPicture.asset(
              AppAssetPaths.alertNavIcon,
              color: AppColors.blue500,
            ),
            label: AppStrings.emptyString,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppAssetPaths.profileNavIcon),
            activeIcon: SvgPicture.asset(
              AppAssetPaths.profileNavIcon,
              color: AppColors.blue500,
            ),
            label: AppStrings.emptyString,
          ),
        ],
      ),
      body: pages[bottomNavIndex],
      // IndexedStack(
      //   index: bottomNavIndex,
      //   children: _pages,
      // ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EaKaziScaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: kDefaultPadding / 2,
            child: Row(
              children: [
                //TODO: TURN TO TEMPLATE TEXT
                Text(
                  "Hi, Mary",
                  style: Theme.of(context).textTheme.headline5,
                ),
                const Spacer(),
                IconButton(
                  onPressed: () => null,
                  icon: const Icon(Icons.more_horiz),
                ),
              ],
            ),
          ),
          const SearchField(),
          gapH2,
          SizedBox(
            height: 150,
            child: ListView(
              shrinkWrap: true,
              primary: false,
              scrollDirection: Axis.horizontal,
              children: [
                ChoiceType(
                  title: AppStrings.skillAcquisition,
                  imagePath: "assets/images/task.png",
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const CoursesScreen(),
                    ),
                  ), //TODO: IMPLEMENTATION HERE
                ),
                ChoiceType(
                  title: AppStrings.bidJobs,
                  imagePath: "assets/images/jobs.png",
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const JobsScreen(),
                    ),
                  ), //TODO: IMPLEMENTATION HERE
                ),
                gapW4,
              ],
            ),
          ),
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
          Padding(
            padding: kDefaultPadding / 2,
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
          ),
          const JobCard(
            jobType: "Visual Designer - UI Designer", //TODO: JOB TYPE
            companyName: "Google",
            locationType: "Remote",
            imagePath: AppAssetPaths.googleIcon,
            altText: "3hrs ago •",
          ),
          const JobCard(
              jobType: "Visual Designer - UI Designer", //TODO: JOB TYPE
              companyName: "EA Pesa",
              locationType: "Mwanza, Tanzania • Full Time",
              imagePath: "assets/icons/eapesa.svg",
              altText: "3hrs ago •"),
          const JobCard(
              jobType: "Visual Designer - UI Designer", //TODO: JOB TYPE
              companyName: "EA Kazi",
              locationType: "Nairobi, Kenya • Full Time",
              imagePath: "assets/icons/eakazi.svg",
              altText: "3hrs ago •"),
          const JobCard(
              jobType: "Visual Designer - UI Designer", //TODO: JOB TYPE
              companyName: "Google",
              locationType: "Remote",
              imagePath: AppAssetPaths.googleIcon,
              altText: "3hrs ago •"),
          const JobCard(
              jobType: "Visual Designer - UI Designer", //TODO: JOB TYPE
              companyName: "EA Pesa",
              locationType: "Mwanza, Tanzania • Full Time",
              imagePath: "assets/icons/eapesa.svg",
              altText: "3hrs ago •"),
          const JobCard(
              jobType: "Visual Designer - UI Designer", //TODO: JOB TYPE
              companyName: "EA Kazi",
              locationType: "Nairobi, Kenya • Full Time",
              imagePath: "assets/icons/eakazi.svg",
              altText: "3hrs ago •"),
        ],
      ),
    );
  }
}

class ChoiceType extends StatelessWidget {
  const ChoiceType({
    Key? key,
    required this.title,
    required this.imagePath,
    this.onPressed,
  }) : super(key: key);

  final String title;
  final String imagePath;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: Sizes.p10),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          width: 300, //TODO: DONT DO THIS
          padding: kDefaultPadding,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Sizes.p12),
            color: AppColors.blueColor.withOpacity(.2),
          ),
          child: Center(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      gapH2,
                      const Text(AppStrings.getStarted),
                    ],
                  ),
                ),
                Container(
                  height: Sizes.p64,
                  width: Sizes.p64,
                  decoration: BoxDecoration(
                    color: AppColors.blueColor.withOpacity(.5),
                    borderRadius: BorderRadius.circular(Sizes.p64),
                  ),
                  child: Center(
                    child: Image.asset(imagePath),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key? key,
    required this.title,
    required this.imagePath,
    required this.onPressed,
  }) : super(key: key);

  final String title;
  final String imagePath;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: Sizes.p20),
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: AppColors.blueColor),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Sizes.p10),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(imagePath),
            gapW2,
            Text(
              title,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color: AppColors.secondaryColor,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

class Category {
  final String title;
  final String imagePath;

  const Category({
    required this.title,
    required this.imagePath,
  });
}

List<Category> categoryData = const [
  Category(
    title: AppStrings.media,
    imagePath: "assets/icons/media.svg",
  ),
  Category(
    title: AppStrings.design,
    imagePath: "assets/icons/design.svg",
  ),
  Category(
    title: AppStrings.devOps,
    imagePath: "assets/icons/devOps.svg",
  ),
  Category(
    title: AppStrings.dataAnalysis,
    imagePath: "assets/icons/dataAnalysis.svg",
  ),
  Category(
    title: AppStrings.machineLearning,
    imagePath: "assets/icons/machineLearning.svg",
  ),
];

class AlertsScreen extends StatelessWidget {
  const AlertsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class JobCard extends StatelessWidget {
  const JobCard({
    Key? key,
    required this.jobType,
    required this.companyName,
    required this.locationType,
    required this.imagePath,
    this.altText,
  }) : super(key: key);

  final String jobType;
  final String companyName;
  final String locationType;
  final String imagePath;
  final String? altText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kDefaultPadding / Sizes.p2,
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => const JobDescriptionScreen(),
          ),
        ), //TODO: WORK ON THIS FOR LISTVIEW
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.scaffoldBgColor,
            borderRadius: BorderRadius.circular(Sizes.p10),
            boxShadow: [
              BoxShadow(
                color: AppColors.secondaryColor.withOpacity(0.5),
                spreadRadius: Sizes.p2,
                blurRadius: Sizes.p4,
                offset: const Offset(Sizes.p0, Sizes.p4),
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Container(
                  padding: kDefaultPadding / 2,
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: AppColors.scaffoldBgColor,
                    borderRadius: BorderRadius.circular(Sizes.p24),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.secondaryColor.withOpacity(0.5),
                        spreadRadius: Sizes.p2,
                        blurRadius: Sizes.p4,
                        offset: const Offset(Sizes.p0, Sizes.p4),
                      )
                    ],
                  ),
                  child: SvgPicture.asset(imagePath),
                ),
                gapW6,
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        companyName,
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Text(
                              jobType,
                              softWrap: true,
                              style: Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 16),
                            ),
                          ),
                          Text(
                            altText!,
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(color: AppColors.secondaryColor),
                          ), //TODO: TIME IMPLEMENTATION
                        ],
                      ),
                      Text(
                        locationType,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(color: AppColors.secondaryColor),
                      ), //TODO: JOB LOCATION TYPE
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//TODO: FIX JOB CARD