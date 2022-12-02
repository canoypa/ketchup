import 'package:flutter/material.dart';

class FollowList extends StatelessWidget {
  const FollowList({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text(
          "n 人を応援",
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        SizedBox(width: 8),
        Text(
          "m人から応援",
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
