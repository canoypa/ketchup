import 'package:flutter/material.dart';

class MyAvatar extends StatelessWidget {
  const MyAvatar({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        CircleAvatar(
          radius: 40,
          backgroundImage: NetworkImage('https://liginc.co.jp/wp-content/uploads/2015/05/797.png'),
        ),
        SizedBox(width: 16),
        Text(
          "きたまつ",
          style: TextStyle(
            fontSize: 40,
          ),
        ),
      ],
    );
  }
}