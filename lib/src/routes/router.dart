import 'package:auto_route/auto_route.dart';
import 'package:ea_kazi/src/features/features_exports.dart';
import 'package:ea_kazi/src/features/home/home_screen.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(page: OnBoardingScreen, initial: true),
    AutoRoute(page: SignUpScreen),
    AutoRoute(page: SignInScreen),
    AutoRoute(page: HomeScreen),
  ],
)
class $AppRouter {}

