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
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:ea_kazi/src/features/features_exports.dart' as _i1;
import 'package:ea_kazi/src/features/job_description/jobs_screen.dart' as _i3;
import 'package:ea_kazi/src/features/jobs&courses/jobs_courses_exports.dart'
    as _i2;
import 'package:flutter/material.dart' as _i5;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    OnBoardingRoute.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.OnBoardingScreen());
    },
    SignUpRoute.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.SignUpScreen());
    },
    SignInRoute.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.SignInScreen());
    },
    CoursesRoute.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.CoursesScreen());
    },
    CourseDetailRoute.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.CourseDetailScreen());
    },
    CourseVideoRoute.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.CourseVideoScreen());
    },
    JobsRoute.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.JobsScreen());
    },
    DefaultWrapperRoute.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.DefaultWrapperScreen());
    },
    HomeRoute.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.HomeScreen());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(OnBoardingRoute.name, path: '/on-boarding-screen'),
        _i4.RouteConfig(SignUpRoute.name, path: '/sign-up-screen'),
        _i4.RouteConfig(SignInRoute.name, path: '/sign-in-screen'),
        _i4.RouteConfig(CoursesRoute.name, path: '/courses-screen'),
        _i4.RouteConfig(CourseDetailRoute.name, path: '/course-detail-screen'),
        _i4.RouteConfig(CourseVideoRoute.name, path: '/course-video-screen'),
        _i4.RouteConfig(JobsRoute.name, path: '/jobs-screen'),
        _i4.RouteConfig(DefaultWrapperRoute.name, path: '/', children: [
          _i4.RouteConfig(HomeRoute.name,
              path: 'home-screen', parent: DefaultWrapperRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.OnBoardingScreen]
class OnBoardingRoute extends _i4.PageRouteInfo<void> {
  const OnBoardingRoute()
      : super(OnBoardingRoute.name, path: '/on-boarding-screen');

  static const String name = 'OnBoardingRoute';
}

/// generated route for
/// [_i1.SignUpScreen]
class SignUpRoute extends _i4.PageRouteInfo<void> {
  const SignUpRoute() : super(SignUpRoute.name, path: '/sign-up-screen');

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i1.SignInScreen]
class SignInRoute extends _i4.PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: '/sign-in-screen');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i2.CoursesScreen]
class CoursesRoute extends _i4.PageRouteInfo<void> {
  const CoursesRoute() : super(CoursesRoute.name, path: '/courses-screen');

  static const String name = 'CoursesRoute';
}

/// generated route for
/// [_i2.CourseDetailScreen]
class CourseDetailRoute extends _i4.PageRouteInfo<void> {
  const CourseDetailRoute()
      : super(CourseDetailRoute.name, path: '/course-detail-screen');

  static const String name = 'CourseDetailRoute';
}

/// generated route for
/// [_i2.CourseVideoScreen]
class CourseVideoRoute extends _i4.PageRouteInfo<void> {
  const CourseVideoRoute()
      : super(CourseVideoRoute.name, path: '/course-video-screen');

  static const String name = 'CourseVideoRoute';
}

/// generated route for
/// [_i3.JobsScreen]
class JobsRoute extends _i4.PageRouteInfo<void> {
  const JobsRoute() : super(JobsRoute.name, path: '/jobs-screen');

  static const String name = 'JobsRoute';
}

/// generated route for
/// [_i2.DefaultWrapperScreen]
class DefaultWrapperRoute extends _i4.PageRouteInfo<void> {
  const DefaultWrapperRoute({List<_i4.PageRouteInfo>? children})
      : super(DefaultWrapperRoute.name, path: '/', initialChildren: children);

  static const String name = 'DefaultWrapperRoute';
}

/// generated route for
/// [_i2.HomeScreen]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: 'home-screen');

  static const String name = 'HomeRoute';
}
