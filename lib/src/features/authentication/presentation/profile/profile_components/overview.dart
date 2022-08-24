import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:ea_kazi/src/utils/utils_exports.dart';
import 'package:flutter/material.dart';

import 'reusable_container.dart';

class Overview extends StatelessWidget {
  const Overview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.blockSizeVertical * Sizes.p10,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: overViewData.length,
        itemBuilder: (context, index) => ReusableContainer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                overViewData[index].title,
                style: Theme.of(context).textTheme.subtitle1,
              ),
              Text(overViewData[index].subtitle),
            ],
          ),
        ),
      ),
    );
  }
}

//TODO: DELETE LATER DURING API IMPLEMENTATION
class OverViewModel {
  final String title;
  final String subtitle;

  OverViewModel({
    required this.title,
    required this.subtitle,
  });
}

List<OverViewModel> overViewData = [
  OverViewModel(title: "N20, 600", subtitle: "Current balance"),
  OverViewModel(title: "58", subtitle: "Jobs Applied"),
  OverViewModel(title: "15", subtitle: "Jobs Completed"),
];
