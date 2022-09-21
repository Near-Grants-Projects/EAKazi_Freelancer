import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:flutter/material.dart';

class ProfileDetailsSection extends StatelessWidget {
  const ProfileDetailsSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppConstants.kDefaultPadding,
      child: Row(
        children: [
          //TODO: CHANGE TO NETWORK IMAGE
          const CircleAvatar(
            radius: Sizes.p48,
            backgroundImage: AssetImage(
              "assets/images/face.jpg",
            ),
          ),
          gapW12,
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Marvellous IK",
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: AppColors.purpleColor,
                      ),
                ),
                Text(
                  "UI/UX Designer",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: AppColors.secondaryColor),
                ),
                TextButton(
                  onPressed: () => null, //TODO: WORK ON THIS
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(Sizes.p0),
                  ),
                  child: Text(
                    AppStrings.editProfile,
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          color: AppColors.purpleColor, //TODO: ISSUES
                        ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
