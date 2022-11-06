import 'package:flutter/material.dart';
import 'package:ketchup/model/follow.dart';

class FollowList extends StatefulWidget {
  const FollowList({super.key});

  @override
  State<FollowList> createState() => _FollowListState();
}

class _FollowListState extends State<FollowList> {
  List<Follow> followList = [
    Follow(follow: 1,follower: 3),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color:Colors.white,
      child:Row(
        children: [
          Text("${followList[0].follow} 人を応援",style:TextStyle(
            backgroundColor: Colors.white,
            color:Colors.black87,
            decoration:TextDecoration.none,
            fontFamily: 'Roboto',
            fontSize: 16,
          ),),
          Padding(
            padding: const EdgeInsets.only(left:16),
            child: Text("${followList[0].follower}人から応援",style:TextStyle(
              backgroundColor: Colors.white,
              color:Colors.black87,
              decoration:TextDecoration.none,
              fontFamily: 'Roboto',
              fontSize: 16,
            ),),
          ),
        ],
      )
    );
  }
}