
import 'package:flutter/material.dart';
import 'package:ketchup/page/Profile.dart';
import 'package:ketchup/page/followList.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      home: Container(
        alignment:Alignment(-1.0,-1.0),
        color: Colors.white,
        height:100,
        width:200,
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Profile(),
            Padding(
              padding: const EdgeInsets.only(top:16),
              child: FollowList(),
            ),
          ],
        ),
      ),
    );
  }
}
