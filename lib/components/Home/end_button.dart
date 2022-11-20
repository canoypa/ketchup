import 'package:flutter/material.dart';
import 'package:ketchup/components/Home/home_footer.dart';

class EndButton extends StatelessWidget {
  final bool isSelected = false;
  const EndButton({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container (
          decoration: BoxDecoration(
          color: Colors.grey.shade300,
            borderRadius:BorderRadius.circular(10),
          ),
          child: IconButton(
            iconSize: 64,
            color: Colors.purple,
            onPressed: (){}, 
            icon: const Icon(Icons.android),
          ),
        ),
        const SizedBox(width: 24),
        Container (
          decoration: BoxDecoration(
          color: Colors.grey.shade300,
            borderRadius:BorderRadius.circular(10),
          ),
          child: IconButton(
            iconSize: 96,
            color: Colors.purple,
            onPressed: (){}, 
            icon: const Icon(Icons.android),
          ),
        ),
        const SizedBox(width: 24),
        Container (
          decoration: BoxDecoration(
          color: Colors.grey.shade300,
            borderRadius:BorderRadius.circular(10),
          ),
          child: IconButton(
            iconSize: 64,
            color: Colors.purple,
            onPressed: (){}, 
            icon: const Icon(Icons.android),
          ),
        ),
      ],
    );
  }
}