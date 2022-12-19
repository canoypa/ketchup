import 'package:flutter/material.dart';
import 'package:ketchup/components/license/app_license_list.dart';

Page<dynamic> buildLicensesPage(context, state) {
  return MaterialPage(
    child: Scaffold(
      appBar: AppBar(),
      body: const AppLicenseList(),
    ),
  );
}
