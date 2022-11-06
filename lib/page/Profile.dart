import 'package:flutter/material.dart';
import 'package:ketchup/model/Users.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<Users> userList = [
    Users(userId:1,displayName: 'きたまつ', photoUrl: 'https://liginc.co.jp/wp-content/uploads/2015/05/797.png',),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}