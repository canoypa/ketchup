import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ketchup/components/Profile/my_page.dart';
import 'package:ketchup/components/page_builder/page_builder.dart';

class ProfilePage extends PageBuilder {
  const ProfilePage();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SafeArea(child: MyPage());
  }
}
