import 'package:flutter/material.dart';
import 'package:ketchup/components/Home/circular_progress.dart';

class TimerArea extends StatelessWidget {
  final Duration progressTime;
  //

  const TimerArea({
    super.key,
    this.progressTime = const Duration(seconds: 25),
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        const CircularProgress(),
        Text(
          '${progressTime.inSeconds}分',
          style: TextStyle(
            fontSize: 45,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
      ],
    );
  }
}
