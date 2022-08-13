import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:ea_kazi/src/common/common_exports.dart';
import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:ea_kazi/src/utils/utils_exports.dart';

import 'courses_components/course_content_tab.dart';
import 'courses_components/video_player_widget.dart';

enum VideoContent { courseContent, transcript }

class CourseVideoScreen extends StatelessWidget {
  const CourseVideoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context); //TODO: REMOVE THIS LINE
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: const EaKaziAppBar(
          title: AppStrings.courses,
        ),
      ),
      body: Column(
        children: [
          VideoPlayeWidget(
            videoPlayerController:
                VideoPlayerController.asset("assets/videos/test(1).mp4"),
          ),
          Expanded(
            child: DefaultTabController(
              length: VideoContent.values.length,
              child: Column(
                children: [
                  Container(
                    color: AppColors.white500,
                    child: TabBar(
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicator: const BoxDecoration(
                        color: AppColors.scaffoldBgColor,
                      ),
                      tabs: [
                        Padding(
                          padding: kDefaultPadding / Sizes.p2,
                          child: const Tab(text: AppStrings.courseContent),
                        ),
                        Padding(
                          padding: kDefaultPadding / Sizes.p2,
                          child: const Tab(text: AppStrings.transcript),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        const CourseContentTab(),
                        Center(
                          child: Text(
                            "Me",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
