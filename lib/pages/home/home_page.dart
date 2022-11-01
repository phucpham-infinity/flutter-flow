import 'package:auto_route/auto_route.dart';
import 'package:flow_project/shared/widget/app_bar_main.dart';
import 'package:flow_project/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        AuthRouter(),
        PostsRouter(),
        SettingsRouter(),
      ],
      appBarBuilder: (_, tabsRouter) => AppBarMain(
        title: 'FlutterBottomNav',
        appBar: AppBar(),
      ),
      bottomNavigationBuilder: (_, tabsRouter) {
        return SalomonBottomBar(
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 40,
          ),
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: [
            SalomonBottomBarItem(
              selectedColor: Colors.blue[200],
              icon: const Icon(
                Icons.person,
                size: 30,
              ),
              title: const Text('Users'),
            ),
            SalomonBottomBarItem(
              selectedColor: Colors.amberAccent,
              icon: const Icon(
                Icons.post_add,
                size: 30,
              ),
              title: const Text('Posts'),
            ),
            SalomonBottomBarItem(
              selectedColor: Colors.pinkAccent[100],
              icon: const Icon(
                Icons.settings,
                size: 30,
              ),
              title: const Text('Settings'),
            ),
          ],
        );
      },
    );
  }
}
