import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ketchup/components/license/app_license_list.dart';
import 'package:ketchup/components/page_builder/page_builder.dart';

class AppLicensesPage extends PageBuilder {
  const AppLicensesPage();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return Scaffold(
      appBar: AppBar(),
      body: const AppLicenseList(),
    );
  }
}
