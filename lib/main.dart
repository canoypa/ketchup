import 'package:flutter/material.dart';
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
    );
  }
}
