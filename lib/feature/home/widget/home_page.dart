import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flow_project/translations/locale_keys.g.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Home'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.adjust),
            onPressed: () {},
          ),
        ],
      ),
      body: _widgetContent(context),
    );
  }

  Widget _widgetContent(BuildContext context) {
    return Column(
      children: [
        const Text('This is home page'),
        Text(LocaleKeys.hello_text.tr()),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () async {
                await context.setLocale(Locale('en'));
              },
              child: const Text("EN"),
            ),
            ElevatedButton(
              onPressed: () async {
                await context.setLocale(Locale('vi'));
              },
              child: const Text("VN"),
            ),
          ],
        )
      ],
    );
  }
}
