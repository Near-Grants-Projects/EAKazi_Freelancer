// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:ea_kazi/src/common/common_exports.dart';
import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:ea_kazi/src/utils/size_config.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return EaKaziScaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => null, //TODO: WORK ON THIS
            icon: const Icon(
              Icons.more_vert_outlined,
              color: AppColors.darkColor,
            ),
          )
        ],
        title: Text(
          AppStrings.wallet,
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
          children: [
            Container(
              padding: kDefaultPadding,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Sizes.p10),
                color: const Color(0xFFF1F3F6), //TODO: WORK ON THIS
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "N20,600",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  gapH2,
                  Text(
                    AppStrings.currentBalance,
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          color: const Color(0xFF3A4276), //TODO: !!!!!
                        ),
                  ),
                ],
              ),
            ),
            gapH2,
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: kDefaultPadding,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Sizes.p10),
                      color: const Color(0xFFF1F3F6), //TODO: WORK ON THIS
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "2.6 NEAR",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        gapH2,
                        Text(
                          AppStrings.nearBalance,
                          style:
                              Theme.of(context).textTheme.subtitle1!.copyWith(
                                    color: const Color(0xFF3A4276), //TODO: WORK
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
                gapW4,
                Expanded(
                  child: Container(
                    padding: kDefaultPadding,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Sizes.p10),
                      color: const Color(0xFFF1F3F6), //TODO: WORK ON THIS
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "2.6 NGN",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        gapH2,
                        Text(
                          AppStrings.ngnBalance,
                          style:
                              Theme.of(context).textTheme.subtitle1!.copyWith(
                                    color: const Color(0xFF3A4276), //TODO: WORK
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            gapH4,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //TODO: FIX THIS
                WalletActivityButton(
                  assetPath: AppAssetPaths.depositIcon,
                  text: AppStrings.deposit,
                  onPressed: () => null,
                ),
                WalletActivityButton(
                  assetPath: AppAssetPaths.withdrawalIcon,
                  text: AppStrings.withdrawal,
                  onPressed: () => null,
                ),
                WalletActivityButton(
                  assetPath: AppAssetPaths.exchangeIcon,
                  text: AppStrings.exchange,
                  onPressed: () => null,
                ),
                WalletActivityButton(
                  assetPath: AppAssetPaths.sendIcon,
                  text: AppStrings.send,
                  onPressed: () => null,
                ),
              ],
            ),
            gapH6,
            const TransactionCard()
          ],
        ),
      ),
    );
  }
}

class WalletActivityButton extends StatelessWidget {
  const WalletActivityButton({
    Key? key,
    required this.assetPath,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final String assetPath;
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPressed,
      child: Column(
        children: [
          Container(
            padding: kDefaultPadding / Sizes.p2,
            height: SizeConfig.blockSizeVertical * Sizes.p8,
            width: SizeConfig.blockSizeHorizontal * Sizes.p16,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Sizes.p48),
                color: const Color(0xFFEEF7FE) // TODO: WORK ON THIS
                ),
            child: Center(
              child: SvgPicture.asset(assetPath),
            ),
          ),
          Text(
            text,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ],
      ),
    );
  }
}

class TransactionCard extends StatelessWidget {
  const TransactionCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kDefaultPadding,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.scaffoldBgColor,
        boxShadow: defaultBoxShadow,
        borderRadius: BorderRadius.circular(Sizes.p10),
      ),
      child: Row(
        children: [
          Container(
            padding: kDefaultPadding / Sizes.p2,
            height: SizeConfig.blockSizeVertical * Sizes.p6,
            width: SizeConfig.blockSizeHorizontal * Sizes.p12,
            decoration: BoxDecoration(
              color: AppColors.scaffoldBgColor,
              boxShadow: defaultBoxShadow,
              borderRadius: BorderRadius.circular(Sizes.p24),
            ),
            child: Center(
              child: SvgPicture.asset(
                AppAssetPaths.downwardArrowIcon,
              ),
            ),
          ),
          gapW4,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Employer 1",
                  style: Theme.of(context).textTheme.headline6,
                ),
                Text(
                  "Received",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: AppColors.secondaryColor,
                      ),
                ),
              ],
            ),
          ),
          Text(
            "N5,000",
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: const Color(0xFF34A853), //TODO: WORK ON THIS
                ),
          ),
        ],
      ),
    );
  }
}
