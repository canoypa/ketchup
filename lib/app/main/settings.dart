import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:go_router/go_router.dart';

Page<dynamic> buildSettingsPage(context, state) {
  return CustomTransitionPage(
    key: state.pageKey,
    child: const SettingsPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return SharedAxisTransition(
        animation: animation,
        secondaryAnimation: secondaryAnimation,
        transitionType: SharedAxisTransitionType.vertical,
        child: child,
      );
    },
  );
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
}
