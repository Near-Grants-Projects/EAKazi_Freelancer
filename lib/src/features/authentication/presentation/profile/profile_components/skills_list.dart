import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:flutter/material.dart';

class SkillsList extends StatelessWidget {
  const SkillsList({
    Key? key,
  }) : super(key: key);

  //TODO: lIST OF SKILLS FROM API

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: List.generate(
        skills.length,
        (index) => Container(
          margin: const EdgeInsets.only(left: Sizes.p16, top: Sizes.p8),
          padding: const EdgeInsets.symmetric(
            horizontal: Sizes.p24,
            vertical: Sizes.p10,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Sizes.p10),
            color: AppColors.skillsBgColor,
          ),
          child: Text(
            skills[index],
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: AppColors.greenColor,
                ),
          ),
        ),
      ),
    );
  }
}

//TODO: REMOVE LATER
List<String> skills = [
  "UI/UX",
  "Front - End Dev",
  "Figma",
  "Adobe xd",
];
