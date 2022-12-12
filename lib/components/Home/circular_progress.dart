import 'package:flutter/material.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class CircularProgress extends StatelessWidget {
  final double intervalTime;

  const CircularProgress({super.key, required this.intervalTime});

  @override
  Widget build(BuildContext context) {
    return SimpleCircularProgressBar(
      size: 256,
      maxValue: intervalTime,
      progressStrokeWidth: 8,
      backStrokeWidth: 8,
      animationDuration: (intervalTime * 60).toInt(),
      progressColors: [Theme.of(context).colorScheme.primary],
      backColor: Theme.of(context).colorScheme.surfaceVariant,
      mergeMode: true,
      onGetText: (value) {
        return Text(
          '${value.toInt()}分',
          style: TextStyle(
              fontSize: 45, color: Theme.of(context).colorScheme.onSurface),
        );
      },
    );
  }
}

    // 
    // ↓ SimpleCircularProgressBarのリンク
    // https://pub.dev/packages/simple_circular_progress_bar
    // 
    // デフォルトので角を丸くする方法がわからない
    // 
    // Stack(
    //   alignment: AlignmentDirectional.center,
    //   children: [
    //     SizedBox(
    //       height: 256,
    //       width: 256,
    //       child: CircularProgressIndicator.adaptive(
    //         strokeWidth: 8,
    //         backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
    //         value: 0.8,
    //       ),
    //     ),
    //     Text(
    //       '25分',
    //       style: TextStyle(
    //         fontSize: 45,
    //         color: Theme.of(context).colorScheme.onSurface,
    //       ),
    //     ),
    //   ],
    // );
    // 