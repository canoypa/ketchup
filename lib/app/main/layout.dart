import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:go_router/go_router.dart';

enum MainNavigation {
  home(
    path: "/",
    icon: Icons.home_outlined,
    selectedIcon: Icons.home,
  ),
  profile(
    path: "/profile",
    icon: Icons.person_outline,
    selectedIcon: Icons.person,
  ),
  settings(
    path: "/settings",
    icon: Icons.settings_outlined,
    selectedIcon: Icons.settings,
  );

  final IconData icon;
  final IconData selectedIcon;
  final String path;

  const MainNavigation({
    required this.icon,
    required this.selectedIcon,
    required this.path,
  });

  factory MainNavigation.fromSubloc(String subloc) {
    return values.firstWhere(
      (element) => element.path == subloc,
      orElse: () => MainNavigation.home,
    );
  }
}

Page<dynamic> buildMainLayout(
  BuildContext context,
  GoRouterState state,
  Widget child,
) {
  return CustomTransitionPage(
    key: state.pageKey,
    child: MainLayout(
      routerState: state,
      child: child,
    ),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return SharedAxisTransition(
        animation: animation,
        secondaryAnimation: secondaryAnimation,
        transitionType: SharedAxisTransitionType.horizontal,
        child: child,
      );
    },
  );
}

class MainLayout extends StatelessWidget {
  final GoRouterState routerState;
  final Widget child;

  const MainLayout({
    super.key,
    required this.routerState,
    required this.child,
  });

  String getPathLabel(BuildContext context, MainNavigation nav) {
    final l10n = L10n.of(context);

    switch (nav) {
      case MainNavigation.home:
        return l10n.home;
      case MainNavigation.profile:
        return l10n.profile;
      case MainNavigation.settings:
        return l10n.settings;
    }
  }

  @override
  Widget build(BuildContext context) {
    final selectedIndex = MainNavigation.fromSubloc(routerState.subloc).index;

    return Scaffold(
      body: child,
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: (index) {
          GoRouter.of(context).go(MainNavigation.values[index].path);
        },
        destinations: MainNavigation.values.map((v) {
          return NavigationDestination(
            icon: Icon(v.icon),
            selectedIcon: Icon(v.selectedIcon),
            label: getPathLabel(context, v),
          );
        }).toList(),
      ),
    );
  }
}
