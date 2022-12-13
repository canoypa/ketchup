import 'package:flutter/material.dart';
import 'package:ketchup/components/Home/home_footer.dart';
import 'package:ketchup/components/Home/circular_progress.dart';
import 'package:ketchup/components/Home/timer_label.dart';

class TimerArea extends StatelessWidget {
  const TimerArea({super.key});
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
                  CircularProgress(intervalTime: 25),
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
