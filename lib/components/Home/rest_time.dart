import 'package:flutter/material.dart';

class RestTime extends StatelessWidget {
  const RestTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        LayoutBuilder(
          builder: (context, constraints) {
            return ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                foregroundColor:
                    Theme.of(context).colorScheme.onPrimaryContainer,
              ),
              icon: const Icon(Icons.done_all),
              label: const Text(
                '終了する',
              ),
              onPressed: () {},
            );
          },
        ),
        SizedBox(width: 8),
                LayoutBuilder(
          builder: (context, constraints) {
            return ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                foregroundColor:
                    Theme.of(context).colorScheme.onPrimaryContainer,
              ),
              icon: const Icon(Icons.done_all),
              label: const Text(
                '再開する',
              ),
              onPressed: () {},
            );
          },
        )
      ],
    );
  }
}