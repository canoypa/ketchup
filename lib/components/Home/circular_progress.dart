import 'package:flutter/material.dart';

// StatefulにしてTicker使ってアニメーションさせたい
class CircularProgress extends StatelessWidget {
  final double value;
// (DateTime.now()) .difference (startAt) / endAt .difference (startAt)

  const CircularProgress({
    super.key,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 256,
      width: 256,
      child: CircularProgressIndicator.adaptive(
        strokeWidth: 8,
        backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
        value: value,
      ),
    );
  }
}
