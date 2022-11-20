import 'package:flutter/material.dart';
import 'package:ketchup/components/Home/end_button.dart';
import 'package:ketchup/components/Home/start_button.dart';

class HomeFooter extends StatelessWidget {
  const HomeFooter({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        StartButton(),
        EndButton(),
      ],
    );
  }
}