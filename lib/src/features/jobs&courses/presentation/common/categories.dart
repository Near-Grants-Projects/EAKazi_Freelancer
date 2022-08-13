import 'package:ea_kazi/src/constants/app_sizes.dart';
import 'package:ea_kazi/src/utils/size_config.dart';
import 'package:flutter/material.dart';

import 'category.dart';
import 'category_item.dart';

//TODO: HOW TO ADD SPACE AT THE ELEMENT OF THE CATEGORY

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.blockSizeVertical * Sizes.p6,
      child: ListView.builder(
        primary: false,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: categoryData.length,
        itemBuilder: (_, index) => CategoryItem(
          title: categoryData[index].title,
          imagePath: categoryData[index].imagePath,
          onPressed: () => null,
          //TODO: SORT THIS ONPRESSED IMPLEMENTATION
        ),
      ),
    );
  }
}
