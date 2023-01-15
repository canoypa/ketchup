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
        ElevatedButton(
          child: Text('Laravel'),
          onPressed: () async {
            final String? selectedText = await showDialog<String>(
                context: context,
                builder: (_) {
                  return WillPopScope(
                    child: ChangeLabel(),
                    onWillPop: () async => false,
                  );
                });
          },
        )
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
    return SimpleDialog(
      title: Text('選んでね'),
      children: [
        SimpleDialogOption(
          child: Text('選択肢1'),
          onPressed: () {
            Navigator.pop(context, '1が選択されました');
          },
        ),
        SimpleDialogOption(
          child: Text('選択肢2'),
          onPressed: () {
            Navigator.pop(context, '2が選択されました');
          },
        )
      ],
    );
  }
}
/*
enum Categories { Flutter, React, Laravel }

class _ChangeLabelState extends State<ChangeLabel> {

  String _value = '';

  void _setValue(String value) => setState(() => _value = value);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Column(
        children: <Widget>[
            Text(_value, style: TextStyle(fontSize: 50, color: Colors.blueAccent, fontWeight: FontWeight.w600),),
            TextButton(onPressed: () {selectCategory(context);}, child: Text('ダイアログを開く'),)
        ],
      )),
    );
  }

  void selectCategory(BuildContext context) {
    // showDialog
    Future _dialogCategory() async {
      await dialogCategory<Categories>(
        context: context,
        builder: (BuildContext context) => SimpleDialog(
          title: const Text('カテゴリーを選択してください'),
          children: <Widget>[
            SimpleDialogOption(
              child: const Text('Flutter'),
              onPressed: () {
                Navigator.pop(context, Categories.Flutter);
              },
            ),
            SimpleDialogOption(
              child: const Text('React'),
              onPressed: () {
                Navigator.pop(context, Categories.React);
              },
            ),
            SimpleDialogOption(
              child: const Text('Laravel'),
              onPressed: () {
                Navigator.pop(context, Categories.Laravel);
              },
            )
          ],
        ),
      );

      createDialogOption(
          BuildContext context, Categories category, String str) {
        return SimpleDialogOption(
          child: Text(str),
          onPressed: () {
            Navigator.pop(context, category);
          },
        );
      }
    }
  }
}
*/