import 'package:flutter/material.dart';

Page<dynamic> buildLicensesPage(context, state) {
  return const MaterialPage(
    child: Scaffold(
      body: SafeArea(
        child: Text("licenses"),
      ),
    ),
  );
}
