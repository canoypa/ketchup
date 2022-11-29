import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';

Page<dynamic> buildHomePage(context, state) {
  final l10n = L10n.of(context);

  return MaterialPage(
    child: SafeArea(
      child: Text(l10n.home),
    ),
  );
}
