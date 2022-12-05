import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';

Page<dynamic> buildLicensesPage(context, state) {
  final l10n = L10n.of(context);

  return MaterialPage(
    child: Scaffold(
      body: SafeArea(
        child: Text(l10n.license),
      ),
    ),
  );
}
