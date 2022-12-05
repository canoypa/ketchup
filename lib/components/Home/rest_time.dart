import 'package:flutter/material.dart';

class RestTime extends StatelessWidget {
  const RestTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex:1,
          child: ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.primaryContainer,
              foregroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
              padding: const EdgeInsets.symmetric(vertical: 10.0),
            ),
            icon: const Icon(Icons.done_all),
            label: const Text(
              '終了する',
            ),
            onPressed: () {},
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          flex: 1,
          child: ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.primaryContainer,
              foregroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
              padding: const EdgeInsets.symmetric(vertical: 10.0)
            ),
            icon: const Icon(Icons.play_arrow_outlined),
            label: const Text(
              '再開する',
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
