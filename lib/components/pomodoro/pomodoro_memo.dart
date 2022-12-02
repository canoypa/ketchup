import 'package:flutter/material.dart';

class PomodoroMemo extends StatelessWidget {
  const PomodoroMemo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            IconButton(
              icon: const Icon(Icons.notes),
              tooltip: '一覧',
              onPressed: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text('一覧')));
              },
            ),
            const Text(
              'メモを追加',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ],
    );
  }
}
