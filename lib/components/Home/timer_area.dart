import 'package:flutter/material.dart';
import 'package:ketchup/components/Home/home_footer.dart';

class TimerArea extends StatelessWidget {
  const TimerArea({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        children: const [
          Expanded(
            child: Center(
              child: Text('25分'),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          HomeFooter(),
        ],
      ),
    );
  }
}
