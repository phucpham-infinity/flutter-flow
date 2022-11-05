import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';

class LoadingWidget extends ConsumerWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: _widgetContent(context, ref),
    );
  }

  Widget _widgetContent(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Center(
        child: Lottie.network(
          "https://assets1.lottiefiles.com/packages/lf20_0c8439m5.json",
          width: 300,
          height: 300,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
