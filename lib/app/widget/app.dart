import 'package:flow_project/flutter_flow/flutter_flow_theme.dart';
import 'package:flow_project/shared/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();

    return MaterialApp.router(
      debugShowCheckedModeBanner: true,
      title: 'Flutter Base App 2022',
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: FlutterFlowTheme.themeMode,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }
}
