
import 'package:flutter/material.dart';
import 'package:ketchup/model/Users.dart';
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
  List<Users> userList = [
    Users(userId:1,displayName: 'きたまつ', photoUrl: 'https://liginc.co.jp/wp-content/uploads/2015/05/797.png',),
    // Users(userId:2,displayName: "bbbb", photoUrl: "data:image/jpeg;base64,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"),
  ];

  @override
  Widget build(BuildContext context) {
      return MaterialApp( 
        home: Container(
          alignment:Alignment(-1.0,-1.0),
          color: Colors.white,
          height:100,
          width:200,
          child: Padding(
            padding: const EdgeInsets.only(top:24,left:16),
            child: Column(
              children: [
                // Padding(
                //   padding: const EdgeInsets.only(top:24,left:16),
                //   child: 
                  Row(
                    crossAxisAlignment:CrossAxisAlignment.center,
                    textDirection:TextDirection.ltr,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(userList[0].photoUrl),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:16,bottom:8),
                        child: Text(
                          userList[0].displayName,
                          style:TextStyle(
                            backgroundColor: Colors.white,
                            color:Colors.black87,
                            decoration:TextDecoration.none,
                            fontFamily: 'Roboto',
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                //),
                Padding(
                  padding: const EdgeInsets.only(top:16),
                  child: FollowList(),
                ),
              ],
            ),
          ),
        ),
      );
  }
}