import 'package:ea_kazi/src/common/common_exports.dart';
import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:flutter/material.dart';

import 'transaction_card.dart';
import 'wallet_activity_button.dart';

class WalletBody extends StatelessWidget {
  const WalletBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kDefaultPadding,
      child: Column(
        children: [
          const ReusableWidget(
            title: "N20,600",
            subtitle: AppStrings.currentBalance,
          ),
          gapH2,
          Row(
            children: [
              const Expanded(
                child: ReusableWidget(
                  title: "2.6 NEAR",
                  subtitle: AppStrings.nearBalance,
                ),
              ),
              gapW4,
              const Expanded(
                child: ReusableWidget(
                  title: "2.6 NGN",
                  subtitle: AppStrings.ngnBalance,
                ),
              ),
            ],
          ),
          gapH4,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          const TransactionCard(
            transactionAmount: "N5,000",
            sendersName: "Employer 1",
          ),
          gapH2,
          const TransactionCard(
            transactionAmount: "N5,000",
            sendersName: "Employer 1",
          ),
          gapH2,
          const TransactionCard(
            transactionAmount: "N5,000",
            sendersName: "Employer 1",
          ),
          gapH2,
          const TransactionCard(
            transactionAmount: "N5,000",
            sendersName: "Employer 1",
          ),
        ],
      ),
    );
  }
}
