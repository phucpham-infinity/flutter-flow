import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:flow_project/pages/auth/sign_in_page.dart';
import 'package:flow_project/pages/auth/splash_page.dart';

const authRouter = AutoRoute(
    path: 'auth',
    name: 'AuthRouter',
    page: EmptyRouterPage,
    children: [
      AutoRoute(
        path: '',
        page: SplashPage,
      ),
      AutoRoute(
        path: 'signIn',
        page: SignInPage,
      ),
    ]);
