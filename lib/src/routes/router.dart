import 'package:auto_route/auto_route.dart';
import 'package:ea_kazi/src/features/features_exports.dart';
import 'package:ea_kazi/src/features/jobs&courses/presentation/alerts_screen.dart';
import 'package:ea_kazi/src/features/jobs&courses/presentation/jobs/jobs_screen.dart';
import 'package:ea_kazi/src/features/jobs&courses/jobs_courses_exports.dart';
import 'package:ea_kazi/src/features/jobs/presentation/home/home_screen.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(initial: true, page: OnBoardingScreen),
    AutoRoute(page: SignUpScreen),
    AutoRoute(page: SignInScreen),
    AutoRoute(page: CoursesScreen),
    AutoRoute(page: CourseDetailScreen),
    AutoRoute(page: CourseVideoScreen),
    AutoRoute(page: JobsScreen),
    AutoRoute(
      page: DefaultWrapperScreen,
      children: [
        AutoRoute(page: HomeScreen),
        AutoRoute(page: WalletScreen),
        AutoRoute(page: AlertsScreen),
        AutoRoute(page: ProfileScreen),
      ],
    ),
  ],
)
class $AppRouter {}

// SelectBankScreen
// EnterPinScreen
//SuccessfulScreen
