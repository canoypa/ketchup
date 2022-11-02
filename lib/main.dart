import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ketchup/core/router.dart';
import 'package:ketchup/core/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: appLightTheme,
      darkTheme: appDarkTheme,
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
