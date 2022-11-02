import 'package:auto_route/auto_route.dart';

import 'sign_in_page.dart';
import 'sign_up_page.dart';

const signInRouter = AutoRoute(
  path: '/signIn',
  page: SignInPage,
);

const signUpRouter = AutoRoute(path: '/signUp', page: SignUpPage);
