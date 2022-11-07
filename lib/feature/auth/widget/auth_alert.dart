import 'package:flow_project/feature/auth/provider/auth_provider.dart';
import 'package:flow_project/shared/widget/flushbar_success.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void AuthAlert(BuildContext context, WidgetRef ref) {
  ref.listen(authProvider, (previous, next) {
    next.maybeWhen(
      signUp: () {
        FlushbarSuccess(context, 'Done');
      },
      forgotPassword: () {
        FlushbarSuccess(context, 'Done');
      },
      orElse: () {},
      error: (error) {
        error.maybeWhen(
          errorWithMessage: (message) {
            FlushbarSuccess(context, message);
          },
          orElse: () {},
        );
      },
    );
  });
}
