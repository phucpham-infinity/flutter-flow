import 'package:flutter/widgets.dart';
import 'package:auto_route/auto_route.dart';

import 'package:flow_project/app/widget/app_start_page.dart';
import 'package:flow_project/feature/auth/widget/routes.dart';
import 'package:flow_project/feature/home/widget/routes.dart';

class AppRouteObserver extends AutoRouterObserver {
  @override
  void didPush(Route route, Route? previousRoute) {}
}

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(path: '/', page: AppStartPage, initial: true),
    homeRouter,
    signInRouter,
    signUpRouter,
    forgotPasswordRouter,
    resetPasswordRouter,
  ],
)
class $AppRouter {}
