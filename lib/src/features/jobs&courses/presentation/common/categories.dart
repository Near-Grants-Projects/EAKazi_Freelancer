import 'package:ea_kazi/src/constants/app_sizes.dart';
import 'package:ea_kazi/src/features/jobs/core/models/skill_model/skill_model.dart';
import 'package:ea_kazi/src/utils/size_config.dart';
import 'package:flutter/material.dart';

import 'category_item.dart';

//TODO: HOW TO ADD SPACE AT THE ELEMENT OF THE CATEGORY

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
    required this.skills,
  }) : super(key: key);

  final List<SkillModel> skills;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.blockSizeVertical * Sizes.p6,
      child: ListView.builder(
        primary: false,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: skills.length,
        itemBuilder: (_, index) => CategoryItem(
          title: skills[index].title,
          imagePath: skills[index].thumbnailImage,
          onPressed: () {
            //TODO: PERFORM JOB FILTER BY CATEGORY
          },
        ),
      ),
    );
  }
}
