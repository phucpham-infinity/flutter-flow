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
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;
import 'package:flutter/widgets.dart' as _i9;

import '../../app/widget/app_start_page.dart' as _i1;
import '../../feature/auth/widget/forgot_password.dart' as _i5;
import '../../feature/auth/widget/reset_password.dart' as _i6;
import '../../feature/auth/widget/sign_in_page.dart' as _i3;
import '../../feature/auth/widget/sign_up_page.dart' as _i4;
import '../../feature/home/widget/home_page.dart' as _i2;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    AppStartRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.AppStartPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.HomePage(),
      );
    },
    SignInRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.SignInPage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.SignUpPage(),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      final args = routeData.argsAs<ForgotPasswordRouteArgs>(
          orElse: () => const ForgotPasswordRouteArgs());
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.ForgotPasswordPage(key: args.key),
      );
    },
    ResetPasswordRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.ResetPasswordPage(),
      );
    },
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(
          AppStartRoute.name,
          path: '/',
        ),
        _i7.RouteConfig(
          HomeRoute.name,
          path: '/home',
        ),
        _i7.RouteConfig(
          SignInRoute.name,
          path: '/signIn',
        ),
        _i7.RouteConfig(
          SignUpRoute.name,
          path: '/signUp',
        ),
        _i7.RouteConfig(
          ForgotPasswordRoute.name,
          path: '/forgotPassword',
        ),
        _i7.RouteConfig(
          ResetPasswordRoute.name,
          path: '/resetPassword',
        ),
      ];
}

/// generated route for
/// [_i1.AppStartPage]
class AppStartRoute extends _i7.PageRouteInfo<void> {
  const AppStartRoute()
      : super(
          AppStartRoute.name,
          path: '/',
        );

  static const String name = 'AppStartRoute';
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/home',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i3.SignInPage]
class SignInRoute extends _i7.PageRouteInfo<void> {
  const SignInRoute()
      : super(
          SignInRoute.name,
          path: '/signIn',
        );

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i4.SignUpPage]
class SignUpRoute extends _i7.PageRouteInfo<void> {
  const SignUpRoute()
      : super(
          SignUpRoute.name,
          path: '/signUp',
        );

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i5.ForgotPasswordPage]
class ForgotPasswordRoute extends _i7.PageRouteInfo<ForgotPasswordRouteArgs> {
  ForgotPasswordRoute({_i9.Key? key})
      : super(
          ForgotPasswordRoute.name,
          path: '/forgotPassword',
          args: ForgotPasswordRouteArgs(key: key),
        );

  static const String name = 'ForgotPasswordRoute';
}

class ForgotPasswordRouteArgs {
  const ForgotPasswordRouteArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'ForgotPasswordRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.ResetPasswordPage]
class ResetPasswordRoute extends _i7.PageRouteInfo<void> {
  const ResetPasswordRoute()
      : super(
          ResetPasswordRoute.name,
          path: '/resetPassword',
        );

  static const String name = 'ResetPasswordRoute';
}
