import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class StartButton extends StatelessWidget {
  const StartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.grey.shade300,
      ),
      child: IconButton(
        color: Colors.blue,
        onPressed: (){}, 
        icon: const Icon(Icons.android),
        iconSize:96 ,
      ),
    );
  }
}