import 'package:flutter/material.dart';

class FollowList extends StatelessWidget {
  const FollowList({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:16),
      child:Container(
        color:Colors.white,
        child:Row(
          children:const [
            Text("n 人を応援",
            style:TextStyle(
              backgroundColor: Colors.white,
              color:Colors.black87,
              decoration:TextDecoration.none,
              fontFamily: 'Roboto',
              fontSize: 16,
            ),),
            Padding(
              padding: EdgeInsets.only(left:16),
              child: Text("m人から応援",
              style:TextStyle(
                backgroundColor: Colors.white,
                color:Colors.black87,
                decoration:TextDecoration.none,
                fontFamily: 'Roboto',
                fontSize: 16,
              ),),
            ),
          ],
        )
      ),
    );
  }
}