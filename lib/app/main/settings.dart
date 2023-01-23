import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:go_router/go_router.dart';
import 'package:ketchup/components/page_builder/page_builder.dart';
import 'package:ketchup/components/settings/break_time.dart';
import 'package:ketchup/components/settings/work_time.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SettingsPage extends PageBuilder {
  const SettingsPage();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    final l10n = L10n.of(context);

    return CustomScrollView(
      slivers: [
        SliverAppBar.large(
          title: Text(l10n.settings),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: const [
              WorkTimeSettingTile(),
              BreakTimeSettingTile(),
            ],
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    GoRouter.of(context).push("/licenses");
                  },
                  child: Text(l10n.license),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    launchUrlString(
                      "https://canoypa.github.io/ketchup/privacy",
                      mode: LaunchMode.externalApplication,
                    );
                  },
                  child: Text(l10n.privacy_policy),
                ),
              ),
            ],
          ),
        ),
      ],
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
