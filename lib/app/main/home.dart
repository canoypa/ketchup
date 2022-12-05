import 'package:flutter/material.dart';
import 'package:ketchup/components/timer_test.dart';

Page<dynamic> buildHomePage(context, state) {
  return const MaterialPage(
    child: SafeArea(child: TimerTest()),
  );
}
