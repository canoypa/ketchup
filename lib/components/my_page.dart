import 'package:flutter/material.dart';
import 'package:ketchup/components/my_avatar.dart';
import 'package:ketchup/components/follow_list.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        MyAvatar(),
        SizedBox(height: 16),
        FollowList(),
      ],
    );
  }
}
