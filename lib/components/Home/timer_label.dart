import 'package:flutter/material.dart';

class TimerLabel extends StatelessWidget {
  const TimerLabel({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'タイトル',
          style: TextStyle(
            fontSize: 22,
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.circle,
              color: Theme.of(context).colorScheme.outline,
            ),
            Text(
              'カテゴリ',
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        const TextField(),
      ],
    );
  }
}

class ChangeLabel extends StatefulWidget {
  const ChangeLabel({super.key});

  @override
  State<ChangeLabel> createState() => _ChangeLabelState();
}

class _ChangeLabelState extends State<ChangeLabel> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      enabled: true,

    )
  }
}