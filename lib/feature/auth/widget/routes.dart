import 'package:auto_route/auto_route.dart';
import 'package:flow_project/feature/auth/widget/reset_password.dart';

import 'forgot_password.dart';
import 'sign_in_page.dart';
import 'sign_up_page.dart';

const signInRouter = AutoRoute(
  path: '/signIn',
  page: SignInPage,
);

const signUpRouter = AutoRoute(path: '/signUp', page: SignUpPage);
const forgotPasswordRouter =
    AutoRoute(path: '/forgotPassword', page: ForgotPasswordPage);
const resetPasswordRouter =
    AutoRoute(path: '/resetPassword', page: ResetPasswordPage);
