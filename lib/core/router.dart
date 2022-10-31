import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _mainNavigatorKey = GlobalKey<NavigatorState>();

final appRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  routes: [
    ShellRoute(
      navigatorKey: _mainNavigatorKey,
      pageBuilder: (context, state, child) {
        return MaterialPage(
          child: MainLayout(child: child),
        );
      },
      routes: [
        GoRoute(
          path: "/",
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: SafeArea(child: Text("home")),
            );
          },
        ),
        GoRoute(
          path: "/profile",
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: SafeArea(child: Text("profile")),
            );
          },
        ),
        GoRoute(
          path: "/settings",
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: SettingsPage(),
            );
          },
        )
      ],
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: "/licenses",
      pageBuilder: (context, state) {
        return const MaterialPage(
          child: Scaffold(
            body: SafeArea(child: Text("licenses")),
          ),
        );
      },
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: "/privacy-and-terms",
      pageBuilder: (context, state) {
        return const MaterialPage(
          child: Scaffold(
            body: SafeArea(child: Text("privacy and terms")),
          ),
        );
      },
    ),
  ],
);

class MainLayout extends StatelessWidget {
  final Widget child;

  const MainLayout({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (value) {
          if (value == 0) {
            GoRouter.of(context).go("/");
          } else if (value == 1) {
            GoRouter.of(context).go("/profile");
          } else if (value == 2) {
            GoRouter.of(context).go("/settings");
          }
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: "home",
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person),
            label: "profile",
          ),
          NavigationDestination(
            icon: Icon(Icons.settings_outlined),
            selectedIcon: Icon(Icons.settings),
            label: "settings",
          ),
        ],
      ),
    );
  }
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const Text("settings"),
          TextButton(
            onPressed: () {
              GoRouter.of(context).push("/licenses");
            },
            child: const Text("licenses"),
          ),
          TextButton(
            onPressed: () {
              GoRouter.of(context).push("/privacy-and-terms");
            },
            child: const Text("privacy and terms"),
          ),
        ],
      ),
    );
  }
}
