import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:go_router/go_router.dart';
import 'package:ketchup/components/page_builder/page_builder.dart';

class SettingsPage extends PageBuilder {
  const SettingsPage();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    final l10n = L10n.of(context);

    return SafeArea(
      child: Column(
        children: [
          Text(l10n.settings),
          TextButton(
            onPressed: () {
              GoRouter.of(context).push("/licenses");
            },
            child: Text(l10n.license),
          ),
        ],
      ),
    );
  }

  @override
  Widget transitionBuilder(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return SharedAxisTransition(
      animation: animation,
      secondaryAnimation: secondaryAnimation,
      transitionType: SharedAxisTransitionType.vertical,
      child: child,
    );
  }
}
