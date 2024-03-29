import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ketchup/core/router.dart';
import 'package:ketchup/core/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // initial settings
    SharedPreferences.getInstance().then((s) {
      if (!s.containsKey("default_work_time")) {
        s.setInt("default_work_time", 25);
      }
      if (!s.containsKey("default_break_time")) {
        s.setInt("default_break_time", 5);
      }
    });

    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: appLightTheme,
      darkTheme: appDarkTheme,
      localizationsDelegates: L10n.localizationsDelegates,
      supportedLocales: L10n.supportedLocales,
      routerConfig: appRouter,
      builder: (context, child) {
        // 画面を最大限使用するための設定
        final isDark =
            MediaQuery.platformBrightnessOf(context) == Brightness.dark;

        SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
        SystemChrome.setSystemUIOverlayStyle(
          SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness:
                isDark ? Brightness.light : Brightness.dark,
            systemNavigationBarColor: Colors.transparent,
          ),
        );

        return child!;
      },
    );
  }
}
