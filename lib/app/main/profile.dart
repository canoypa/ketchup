import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ketchup/components/Profile/my_page.dart';

Page<dynamic> buildProfilePage(context, state) {
  return CustomTransitionPage(
    key: state.pageKey,
    child: const SafeArea(child: MyPage()),
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
