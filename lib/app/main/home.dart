import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ketchup/components/Home/home_footer.dart';
import 'package:ketchup/components/Home/timer_area.dart';
import 'package:ketchup/components/Home/timer_label.dart';
import 'package:ketchup/components/page_builder/page_builder.dart';

class HomePage extends PageBuilder {
  const HomePage();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    TimerLabel(),
                    SizedBox(height: 16),
                    TimerArea(),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            const HomeFooter(),
          ],
        ),
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
