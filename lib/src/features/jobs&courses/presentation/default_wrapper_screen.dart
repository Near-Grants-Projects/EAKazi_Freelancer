import 'package:auto_route/auto_route.dart';
import 'package:ea_kazi/src/routes/router.gr.dart';
import 'package:ea_kazi/src/utils/utils_exports.dart';
import 'package:flutter/material.dart';
import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:flutter_svg/flutter_svg.dart';

const pages = [
  HomeRoute(),
  WalletRoute(),
  AlertsRoute(),
  ProfileRoute(),
];

//TODO: [ DefaultEaKaziLayout] I DON'T KNOW IF THIS NAME IS OKAY
class DefaultWrapperScreen extends StatelessWidget {
  const DefaultWrapperScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return AutoTabsScaffold(
      bottomNavigationBuilder: (_, tabsRouter) => BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: Sizes.p0,
        backgroundColor: AppColors.scaffoldBgColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: tabsRouter.activeIndex,
        onTap: tabsRouter.setActiveIndex,
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
      routes: pages,
    );
  }
}
