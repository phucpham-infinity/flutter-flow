import 'package:flow_project/feature/auth/provider/auth_provider.dart';
import 'package:flow_project/feature/auth/widget/sign_in_page.dart';
import 'package:flow_project/shared/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flow_project/translations/locale_keys.g.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:auto_route/auto_route.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Home'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.adjust),
            onPressed: () async {
              await ref.read(authProvider.notifier).logOut();
              context.router.replace(SignInRoute());
            },
          ),
        ],
      ),
      body: _widgetContent(context, ref),
    );
  }

  Widget _widgetContent(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        const Text('This is home page'),
        Text(
          LocaleKeys.hello_text.tr(),
        ),
      ],
    );
  }
}
