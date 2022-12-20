import 'package:flutter/material.dart';
import 'package:ketchup/components/Home/home_footer.dart';
import 'package:ketchup/components/Home/timer_area.dart';
import 'package:ketchup/components/Home/timer_label.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  TimerLabel(),
                  SizedBox(height: 16),
                  TimerArea(),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          const HomeFooter(),
        ],
      ),
    );
  }
}
