import 'package:auto_route/auto_route.dart';
import 'package:flow_project/components/app_bar_main.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: [],
      appBarBuilder: (context, tabsRouter) => AppBarMain(
        appBar: AppBar(),
        title: 'Flutter Flow',
      ),
    );
  }
}
