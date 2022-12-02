import 'package:flutter/material.dart';

class ToggleButton extends StatelessWidget {
  const ToggleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          foregroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
          padding: const EdgeInsets.symmetric(vertical: 10.0),
        ),
        icon: const Icon( Icons.play_arrow_outlined ),
        label: const Text('はじめる'),
        onPressed: () {},
      ),
    );
  }
}
