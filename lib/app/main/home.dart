import 'package:flutter/material.dart';
import 'package:ketchup/components/Home/home_footer.dart';

Page<dynamic> buildHomePage(context, state) {
  return const MaterialPage(
    child: SafeArea(child: HomeFooter()),
  );
}
