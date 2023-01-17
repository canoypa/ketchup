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
            hintText: "テキストを入力してください" ,
            border: InputBorder.none,
          ),
        ),
        const SizedBox(height: 8),
        // const ChangeTitle(),
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
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      backgroundColor: Theme.of(context).colorScheme.background,
      title: const Text('カテゴリーを選択'),
      children: [
        SimpleDialogOption(
          child: Text('勉強'),
          onPressed: () {
            Navigator.pop(context, '1が選択されました');
          },
        ),
        SimpleDialogOption(
          child: Text('読書'),
          onPressed: () {
            Navigator.pop(context, '2が選択されました');
          },
        )
      ],
    );
  }
}
