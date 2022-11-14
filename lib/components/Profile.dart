import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment:CrossAxisAlignment.center,
      children: const [
        CircleAvatar(
          radius: 40,
          backgroundImage: NetworkImage('https://liginc.co.jp/wp-content/uploads/2015/05/797.png'),
        ),
        Text(
          "きたまつ",
          textAlign: TextAlign.center,
          style: TextStyle(
            backgroundColor: Colors.white,
            color:Colors.black87,
            decoration:TextDecoration.none,
            fontFamily: 'Roboto',
            fontSize: 40,
          ),
        ),
      ],
    );
  }
}