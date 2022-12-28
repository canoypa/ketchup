import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class PageBuilder {
  const PageBuilder();

  Page<dynamic> buildPage(
    BuildContext context,
    GoRouterState state,
  ) {
    return CustomTransitionPage(
      key: state.pageKey,
      child: Builder(
        builder: (context) => build(context, state),
      ),
      transitionsBuilder: transitionBuilder,
    );
  }

  Widget transitionBuilder(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return const ZoomPageTransitionsBuilder().buildTransitions(
      null,
      context,
      animation,
      secondaryAnimation,
      child,
    );
  }

  Widget build(
    BuildContext context,
    GoRouterState state,
  );
}

abstract class LayoutPageBuilder {
  const LayoutPageBuilder();

  Page<dynamic> buildLayout(
    BuildContext context,
    GoRouterState state,
    Widget child,
  ) {
    return CustomTransitionPage(
      key: state.pageKey,
      child: Builder(
        builder: (context) => build(context, state, child),
      ),
      transitionsBuilder: transitionBuilder,
    );
  }

  Widget transitionBuilder(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return const ZoomPageTransitionsBuilder().buildTransitions(
      null,
      context,
      animation,
      secondaryAnimation,
      child,
    );
  }

  Widget build(
    BuildContext context,
    GoRouterState state,
    Widget child,
  );
}
