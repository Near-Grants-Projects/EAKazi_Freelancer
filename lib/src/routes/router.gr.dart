// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:ea_kazi/src/features/features_exports.dart' as _i1;
import 'package:ea_kazi/src/features/jobs&courses/jobs_courses_exports.dart'
    as _i2;
import 'package:ea_kazi/src/features/jobs&courses/presentation/alerts_screen.dart'
    as _i4;
import 'package:ea_kazi/src/features/jobs&courses/presentation/jobs/jobs_screen.dart'
    as _i3;
import 'package:flutter/material.dart' as _i6;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    OnBoardingRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.OnBoardingScreen());
    },
    SignUpRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.SignUpScreen());
    },
    SignInRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.SignInScreen());
    },
    CoursesRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.CoursesScreen());
    },
    CourseDetailRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.CourseDetailScreen());
    },
    CourseVideoRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.CourseVideoScreen());
    },
    JobsRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.JobsScreen());
    },
    DefaultWrapperRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.DefaultWrapperScreen());
    },
    HomeRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.HomeScreen());
    },
    WalletRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.WalletScreen());
    },
    AlertsRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i4.AlertsScreen());
    },
    ProfileRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.ProfileScreen());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(OnBoardingRoute.name, path: '/'),
        _i5.RouteConfig(SignUpRoute.name, path: '/sign-up-screen'),
        _i5.RouteConfig(SignInRoute.name, path: '/sign-in-screen'),
        _i5.RouteConfig(CoursesRoute.name, path: '/courses-screen'),
        _i5.RouteConfig(CourseDetailRoute.name, path: '/course-detail-screen'),
        _i5.RouteConfig(CourseVideoRoute.name, path: '/course-video-screen'),
        _i5.RouteConfig(JobsRoute.name, path: '/jobs-screen'),
        _i5.RouteConfig(DefaultWrapperRoute.name,
            path: '/default-wrapper-screen',
            children: [
              _i5.RouteConfig(HomeRoute.name,
                  path: 'home-screen', parent: DefaultWrapperRoute.name),
              _i5.RouteConfig(WalletRoute.name,
                  path: 'wallet-screen', parent: DefaultWrapperRoute.name),
              _i5.RouteConfig(AlertsRoute.name,
                  path: 'alerts-screen', parent: DefaultWrapperRoute.name),
              _i5.RouteConfig(ProfileRoute.name,
                  path: 'profile-screen', parent: DefaultWrapperRoute.name)
            ])
      ];
}

/// generated route for
/// [_i1.OnBoardingScreen]
class OnBoardingRoute extends _i5.PageRouteInfo<void> {
  const OnBoardingRoute() : super(OnBoardingRoute.name, path: '/');

  static const String name = 'OnBoardingRoute';
}

/// generated route for
/// [_i1.SignUpScreen]
class SignUpRoute extends _i5.PageRouteInfo<void> {
  const SignUpRoute() : super(SignUpRoute.name, path: '/sign-up-screen');

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i1.SignInScreen]
class SignInRoute extends _i5.PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: '/sign-in-screen');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i2.CoursesScreen]
class CoursesRoute extends _i5.PageRouteInfo<void> {
  const CoursesRoute() : super(CoursesRoute.name, path: '/courses-screen');

  static const String name = 'CoursesRoute';
}

/// generated route for
/// [_i2.CourseDetailScreen]
class CourseDetailRoute extends _i5.PageRouteInfo<void> {
  const CourseDetailRoute()
      : super(CourseDetailRoute.name, path: '/course-detail-screen');

  static const String name = 'CourseDetailRoute';
}

/// generated route for
/// [_i2.CourseVideoScreen]
class CourseVideoRoute extends _i5.PageRouteInfo<void> {
  const CourseVideoRoute()
      : super(CourseVideoRoute.name, path: '/course-video-screen');

  static const String name = 'CourseVideoRoute';
}

/// generated route for
/// [_i3.JobsScreen]
class JobsRoute extends _i5.PageRouteInfo<void> {
  const JobsRoute() : super(JobsRoute.name, path: '/jobs-screen');

  static const String name = 'JobsRoute';
}

/// generated route for
/// [_i2.DefaultWrapperScreen]
class DefaultWrapperRoute extends _i5.PageRouteInfo<void> {
  const DefaultWrapperRoute({List<_i5.PageRouteInfo>? children})
      : super(DefaultWrapperRoute.name,
            path: '/default-wrapper-screen', initialChildren: children);

  static const String name = 'DefaultWrapperRoute';
}

/// generated route for
/// [_i2.HomeScreen]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: 'home-screen');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i1.WalletScreen]
class WalletRoute extends _i5.PageRouteInfo<void> {
  const WalletRoute() : super(WalletRoute.name, path: 'wallet-screen');

  static const String name = 'WalletRoute';
}

/// generated route for
/// [_i4.AlertsScreen]
class AlertsRoute extends _i5.PageRouteInfo<void> {
  const AlertsRoute() : super(AlertsRoute.name, path: 'alerts-screen');

  static const String name = 'AlertsRoute';
}

/// generated route for
/// [_i1.ProfileScreen]
class ProfileRoute extends _i5.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: 'profile-screen');

  static const String name = 'ProfileRoute';
}
