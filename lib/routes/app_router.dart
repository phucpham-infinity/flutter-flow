import 'package:auto_route/auto_route.dart';
import 'package:flow_project/pages/auth/auth_router.dart';
import 'package:flow_project/pages/home/home_page.dart';
import 'package:flow_project/pages/post/post_router.dart';
import 'package:flow_project/pages/setting/setting_router.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
      path: '/',
      page: HomePage,
      children: [
        postRouter,
        authRouter,
        settingRouter,
      ],
    ),
  ],
)
class $AppRouter {}
