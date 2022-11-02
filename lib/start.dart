import 'dart:developer';
import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flow_project/shared/http/http_override.dart';
import 'package:flow_project/shared/util/logger.dart';
import 'package:flow_project/shared/util/platform_type.dart';
import 'package:flow_project/translations/codegen_loader.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app/app.dart';

void start() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();

  HttpOverrides.global = MyHttpOverrides();

  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  final platformType = detectPlatformType();

  runApp(ProviderScope(
    overrides: [
      platformTypeProvider.overrideWithValue(platformType),
    ],
    observers: [Logger()],
    child: EasyLocalization(
      path: 'resources/langs',
      assetLoader: const CodegenLoader(),
      fallbackLocale: const Locale('en'),
      supportedLocales: const [
        Locale('en'),
        Locale('vi'),
      ],
      child: const App(),
    ),
  ));
}
