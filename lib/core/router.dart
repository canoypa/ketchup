import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ketchup/app/history.dart';
import 'package:ketchup/app/licenses.dart';
import 'package:ketchup/app/main/home.dart';
import 'package:ketchup/app/main/layout.dart';
import 'package:ketchup/app/main/settings.dart';
import 'package:ketchup/app/pomodoro.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _mainNavigatorKey = GlobalKey<NavigatorState>();

final appRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  routes: [
    ShellRoute(
      navigatorKey: _mainNavigatorKey,
      pageBuilder: const MainLayout().buildLayout,
      routes: [
        GoRoute(
          path: "/",
          pageBuilder: const HomePage().buildPage,
        ),
        GoRoute(
          path: "/history",
          pageBuilder: const HistoryPage().buildPage,
        ),
        GoRoute(
          path: "/settings",
          pageBuilder: const SettingsPage().buildPage,
        )
      ],
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: "/pomodoro",
      pageBuilder: const PomodoroPage().buildPage,
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: "/licenses",
      pageBuilder: const AppLicensesPage().buildPage,
    ),
  ],
);
