import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final pageIndexProvider = StateProvider((ref) => 0);

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
      curve: Curves.easeInOut,
      margin: const EdgeInsets.only(right: 5),
      padding: const EdgeInsets.all(Sizes.p4),
      height: Sizes.p16,
      width: Sizes.p16,
      decoration: BoxDecoration(
        color: pageIndex == index ? AppColors.darkColor : Colors.transparent,
        borderRadius: BorderRadius.circular(Sizes.p12),
      ),
      child: Container(
        height: Sizes.p16,
        width: Sizes.p16,
        decoration: BoxDecoration(
          color: pageIndex == index
              ? AppColors.scaffoldBgColor
              : AppColors.secondaryColor,
          borderRadius: BorderRadius.circular(Sizes.p12),
        ),
      ),
    );
  }
}
