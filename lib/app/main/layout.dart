import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

Page<dynamic> buildMainLayout(
  BuildContext context,
  GoRouterState state,
  Widget child,
) {
  return MaterialPage(
    child: MainLayout(child: child),
  );
}

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
