import 'package:auto_route/auto_route.dart';
import 'package:ea_kazi/src/features/courses/courses.dart';
import 'package:ea_kazi/src/features/features_exports.dart';
import 'package:ea_kazi/src/features/job_description/jobs_screen.dart';
// import 'package:ea_kazi/src/features/home/home_screen.dart';
import 'package:ea_kazi/src/features/jobs/jobs_exports.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(
      // initial: true,
      page: OnBoardingScreen,
    ),
    AutoRoute(
      page: SignUpScreen,
    ),
    AutoRoute(
      page: SignInScreen,
    ),
    AutoRoute(page: CoursesScreen),
    AutoRoute(page: JobsScreen),
    AutoRoute(
      initial: true,
      page: DefaultWrapperScreen,
      children: [
        AutoRoute(page: HomeScreen),
      ],
    ),
  ],
)
class $AppRouter {}

// const homeRoute = AutoRoute(
//   page: EmptyRouterScreen,
//   children: [
//     AutoRoute(
//       path: 'courses',
//       page: CoursesScreen,
//     ),
//     AutoRoute(
//       path: 'jobs',
//       page: JobsScreen,
//     ),
//   ],
// );

//  AutoRoute(
//             page: EmptyRouterPage,
//             children: [
//           AutoRoute(page: NotificationsView,initial: true,), // need
//to pass a Class object here ex:  NotificationsView({ this.cable});
//           AutoRoute(page: InfoView),
//           AutoRoute(page: NavView),

//         ]),
