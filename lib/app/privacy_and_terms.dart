import 'package:flutter/material.dart';

Page<dynamic> buildPrivacyAndTermsPage(context, state) {
  return const MaterialPage(
    child: Scaffold(
      body: SafeArea(child: Text("privacy and terms")),
    ),
  );
}
