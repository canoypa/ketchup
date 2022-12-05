import 'package:flutter/material.dart';
import 'package:ketchup/components/Profile/my_page.dart';

Page<dynamic> buildProfilePage(context, state) {
  return const MaterialPage(
    child: SafeArea(child: MyPage()),
  );
}
