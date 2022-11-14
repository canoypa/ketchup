import 'package:flutter/material.dart';
import 'package:ketchup/components/my_avatar.dart';
import 'package:ketchup/components/follow_list.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height:100,
      width:200,
      child: Padding(
        padding: const EdgeInsets.only(top:24,left:16),
        child: Column(
          children: const[
            MyAvatar(),
            FollowList(),
          ],
        ),
      ),
    );
  }
}
