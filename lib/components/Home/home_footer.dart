import 'package:flutter/material.dart';
import 'package:ketchup/components/Home/rest_time.dart';
import 'package:ketchup/components/Home/toggle_button.dart';

class HomeFooter extends StatelessWidget {
  const HomeFooter({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text('頑張ってください～～'),
        Padding(
          padding: EdgeInsets.symmetric(horizontal:32),
          child: ToggleButton(),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal:32),
          child: RestTime(),
        )
      ],
    );
  }
}