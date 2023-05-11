import 'dart:ui';

import 'package:device_preview_screenshot/device_preview_screenshot.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_travel_news_app/config/app_router.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        tools: const [
          ...DevicePreview.defaultTools,
          DevicePreviewScreenshot(),
        ],

        builder: (context) => MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      routerConfig: AppRouter.appRouter,
      scrollBehavior: const MaterialScrollBehavior()
          .copyWith(dragDevices: {PointerDeviceKind.mouse}),
    );
  }
}
