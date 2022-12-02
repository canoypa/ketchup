import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ketchup/app/licenses.dart';
import 'package:ketchup/app/history.dart';
import 'package:ketchup/app/main/home.dart';
import 'package:ketchup/app/main/layout.dart';
import 'package:ketchup/app/main/profile.dart';
import 'package:ketchup/app/main/settings.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _mainNavigatorKey = GlobalKey<NavigatorState>();

final appRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  routes: [
    ShellRoute(
      navigatorKey: _mainNavigatorKey,
      pageBuilder: buildMainLayout,
      routes: [
        GoRoute(
          path: "/",
          pageBuilder: buildHomePage,
        ),
        GoRoute(
          path: "/profile",
          pageBuilder: buildProfilePage,
        ),
        GoRoute(
          path: "/settings",
          pageBuilder: buildSettingsPage,
        )
      ],
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: "/licenses",
      pageBuilder: buildLicensesPage,
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: "/history",
      pageBuilder: buildHistoryPage,
    ),
  ],
);
