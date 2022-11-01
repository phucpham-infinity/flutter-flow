import 'package:flow_project/routes/app_router.gr.dart';
import 'package:flutter/material.dart';

import 'flutter_flow/internationalization.dart';
import 'flutter_flow/flutter_flow_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter flow base app',
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
      localizationsDelegates: const [FFLocalizationsDelegate()],
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: FlutterFlowTheme.themeMode,
    );
  }
}
