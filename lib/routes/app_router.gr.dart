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
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:auto_route/empty_router_widgets.dart' as _i2;
import 'package:flutter/material.dart' as _i9;

import '../pages/auth/sign_in_page.dart' as _i7;
import '../pages/auth/splash_page.dart' as _i6;
import '../pages/home/home_page.dart' as _i1;
import '../pages/post/posts_page.dart' as _i4;
import '../pages/post/single_post_page.dart' as _i5;
import '../pages/setting/setting_page.dart' as _i3;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    PostsRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    AuthRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    SettingsRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.SettingPage(),
      );
    },
    PostsRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.PostsPage(),
      );
    },
    SinglePostRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<SinglePostRouteArgs>(
          orElse: () =>
              SinglePostRouteArgs(postId: pathParams.getInt('postId')));
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.SinglePostPage(
          key: args.key,
          postId: args.postId,
        ),
      );
    },
    SplashRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.SplashPage(),
      );
    },
    SignInRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.SignInPage(),
      );
    },
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(
          HomeRoute.name,
          path: '/',
          children: [
            _i8.RouteConfig(
              PostsRouter.name,
              path: 'post',
              parent: HomeRoute.name,
              children: [
                _i8.RouteConfig(
                  PostsRoute.name,
                  path: '',
                  parent: PostsRouter.name,
                ),
                _i8.RouteConfig(
                  SinglePostRoute.name,
                  path: ':postId',
                  parent: PostsRouter.name,
                ),
              ],
            ),
            _i8.RouteConfig(
              AuthRouter.name,
              path: 'auth',
              parent: HomeRoute.name,
              children: [
                _i8.RouteConfig(
                  SplashRoute.name,
                  path: '',
                  parent: AuthRouter.name,
                ),
                _i8.RouteConfig(
                  SignInRoute.name,
                  path: 'signIn',
                  parent: AuthRouter.name,
                ),
              ],
            ),
            _i8.RouteConfig(
              SettingsRouter.name,
              path: 'settings',
              parent: HomeRoute.name,
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class PostsRouter extends _i8.PageRouteInfo<void> {
  const PostsRouter({List<_i8.PageRouteInfo>? children})
      : super(
          PostsRouter.name,
          path: 'post',
          initialChildren: children,
        );

  static const String name = 'PostsRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class AuthRouter extends _i8.PageRouteInfo<void> {
  const AuthRouter({List<_i8.PageRouteInfo>? children})
      : super(
          AuthRouter.name,
          path: 'auth',
          initialChildren: children,
        );

  static const String name = 'AuthRouter';
}

/// generated route for
/// [_i3.SettingPage]
class SettingsRouter extends _i8.PageRouteInfo<void> {
  const SettingsRouter()
      : super(
          SettingsRouter.name,
          path: 'settings',
        );

  static const String name = 'SettingsRouter';
}

/// generated route for
/// [_i4.PostsPage]
class PostsRoute extends _i8.PageRouteInfo<void> {
  const PostsRoute()
      : super(
          PostsRoute.name,
          path: '',
        );

  static const String name = 'PostsRoute';
}

/// generated route for
/// [_i5.SinglePostPage]
class SinglePostRoute extends _i8.PageRouteInfo<SinglePostRouteArgs> {
  SinglePostRoute({
    _i9.Key? key,
    required int postId,
  }) : super(
          SinglePostRoute.name,
          path: ':postId',
          args: SinglePostRouteArgs(
            key: key,
            postId: postId,
          ),
          rawPathParams: {'postId': postId},
        );

  static const String name = 'SinglePostRoute';
}

class SinglePostRouteArgs {
  const SinglePostRouteArgs({
    this.key,
    required this.postId,
  });

  final _i9.Key? key;

  final int postId;

  @override
  String toString() {
    return 'SinglePostRouteArgs{key: $key, postId: $postId}';
  }
}

/// generated route for
/// [_i6.SplashPage]
class SplashRoute extends _i8.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i7.SignInPage]
class SignInRoute extends _i8.PageRouteInfo<void> {
  const SignInRoute()
      : super(
          SignInRoute.name,
          path: 'signIn',
        );

  static const String name = 'SignInRoute';
}
