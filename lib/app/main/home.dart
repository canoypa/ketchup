import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ketchup/components/Home/timer_area.dart';
import 'package:ketchup/components/page_builder/page_builder.dart';

class HomePage extends PageBuilder {
  const HomePage();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SafeArea(child: TimerArea());
  }
}
