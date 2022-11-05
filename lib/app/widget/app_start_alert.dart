import 'package:flow_project/app/provider/app_start_provider.dart';
import 'package:flow_project/shared/widget/flushbar_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void AppStartAlert(BuildContext context, WidgetRef ref) {
  ref.listen(appStartProvider, (previous, next) {
    next.when(
      initial: () {},
      unauthenticated: (message) =>
          FlushbarError(context, message ?? 'Something error!'),
      internetUnAvailable: () {},
      authenticated: () {},
    );
  });
}
