import 'package:flutter/material.dart';

class TimerLabel extends StatelessWidget {
  const TimerLabel({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TextField(
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            hintText: "テキストを入力してください",
            border: InputBorder.none,
          ),
        ),
        const SizedBox(height: 8),
        InkWell(
          onTap: () async {
            final String? selectedText = await showDialog<String>(
                context: context,
                builder: (_) {
                  return WillPopScope(
                    child: const ChangeCategory(),
                    onWillPop: () async => false,
                  );
                });
          },
          child: Row(
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
        ),
        // const ChangeTitle(),
        /*
        ElevatedButton(
          child: Text('Laravel'),
          onPressed: () async {
            final String? selectedText = await showDialog<String>(
                context: context,
                builder: (_) {
                  return WillPopScope(
                    child: const ChangeCategory(),
                    onWillPop: () async => false,
                  );
                });
          },
        ),
        */
        const SizedBox(height: 16),
      ],
    );
  }
}

class ChangeCategory extends StatefulWidget {
  const ChangeCategory({super.key});

  @override
  State<ChangeCategory> createState() => _ChangeCategoryState();
}

class _ChangeCategoryState extends State<ChangeCategory> {
  final List<String> categories = [
    "勉強",
    "読書",
    "音楽"
  ];
  
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      backgroundColor: Theme.of(context).colorScheme.background,
      title: const Text('カテゴリーを選択'),
      children: categories.map((category) {
        return SimpleDialogOption(
          child: Text(category),
          onPressed: () {
            Navigator.pop(context, 'が選択されました');
          },
        );
      },
      ).toList(),
    );
  }
}
