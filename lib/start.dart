import 'dart:developer';
import 'dart:io';

import 'package:flow_project/app/app.dart';
import 'package:flow_project/shared/http/http_override.dart';
import 'package:flow_project/shared/util/logger.dart';
import 'package:flow_project/shared/util/platform_type.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void start() async {
  WidgetsFlutterBinding.ensureInitialized();

  HttpOverrides.global = MyHttpOverrides();

  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  final platformType = detectPlatformType();

  runApp(ProviderScope(
    overrides: [
      platformTypeProvider.overrideWithValue(platformType),
    ],
    // observers: [Logger()],
    child: const MyApp(),
  ));
}
