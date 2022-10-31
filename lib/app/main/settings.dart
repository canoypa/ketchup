import 'package:flutter/material.dart';
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
