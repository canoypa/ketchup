import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ketchup/components/Profile/my_page.dart';
import 'package:ketchup/components/page_builder/page_builder.dart';

class ProfilePage extends PageBuilder {
  const ProfilePage();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SafeArea(child: MyPage());
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
