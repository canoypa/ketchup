import 'package:flutter/material.dart';
import 'package:ketchup/components/Home/timer_area.dart';

Page<dynamic> buildHomePage(context, state) {
  return const MaterialPage(
    child: SafeArea(child: TimerArea()),
  );
}
