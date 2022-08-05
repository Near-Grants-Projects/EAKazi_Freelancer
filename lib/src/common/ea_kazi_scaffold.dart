import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/utils_exports.dart';

class EaKaziScaffold extends StatelessWidget {
  const EaKaziScaffold({
    Key? key,
    required this.body,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.bottomNavigationBar,
    this.resizeToAvoidBottomInset,
    this.title,
    this.appBar,
  }) : super(key: key);

  final Widget body;
  final Widget? floatingActionButton;
  final Widget? bottomNavigationBar;
  final bool? resizeToAvoidBottomInset;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final PreferredSizeWidget? appBar;
  final String? title;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: EaKaziTheme.lightTheme().brightness == Brightness.light
          ? SystemUiOverlayStyle.dark.copyWith(
              statusBarColor: Colors.transparent,
            )
          : SystemUiOverlayStyle.light.copyWith(
              statusBarColor: Colors.transparent,
            ),
      child: Scaffold(
        resizeToAvoidBottomInset: resizeToAvoidBottomInset,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            title ?? AppStrings.emptyString,
            style: Theme.of(context).textTheme.headline6,
          ),
          leading: BackButton(
            onPressed: () => null, //TODO: IMPLEMENT BACK BUTTON FUNCTIONALITY
            color: AppColors.darkColor,
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: body,
          ),
        ),
        floatingActionButtonLocation: floatingActionButtonLocation,
        floatingActionButton: floatingActionButton,
        bottomNavigationBar: bottomNavigationBar,
      ),
    );
  }
}
