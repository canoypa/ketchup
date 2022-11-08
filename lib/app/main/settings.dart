import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:go_router/go_router.dart';

Page<dynamic> buildSettingsPage(context, state) {
  return const MaterialPage(
    child: SettingsPage(),
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
