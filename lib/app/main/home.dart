import 'package:flutter/material.dart';
import 'package:ketchup/components/Home/home_page.dart';

Page<dynamic> buildHomePage(context, state) {
  return const MaterialPage(
    child: SafeArea(child: HomePage()),
  );
}
