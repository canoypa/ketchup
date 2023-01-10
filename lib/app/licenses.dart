import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:go_router/go_router.dart';
import 'package:ketchup/components/license/app_license_list.dart';
import 'package:ketchup/components/page_builder/page_builder.dart';

class AppLicensesPage extends PageBuilder {
  const AppLicensesPage();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    final l10n = L10n.of(context);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text(l10n.license),
          ),
          const SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            sliver: AppLicenseList(),
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
      transitionType: SharedAxisTransitionType.horizontal,
      child: child,
    );
  }
}
