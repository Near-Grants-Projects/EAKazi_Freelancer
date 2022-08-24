// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:ea_kazi/src/common/common_exports.dart';
import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:ea_kazi/src/utils/size_config.dart';

import 'wallet_components/wallet_body.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return EaKaziScaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: EaKaziAppBar(
          title: AppStrings.wallet,
          actions: [
            IconButton(
              onPressed: () => null, //TODO: WORK ON THIS
              icon: const Icon(
                Icons.more_vert_outlined,
                color: AppColors.darkColor,
              ),
            ),
          ],
        ),
      ),
      body: const WalletBody(),
    );
  }
}