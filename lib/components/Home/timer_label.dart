import 'package:flutter/material.dart';

class TimerLabel extends StatelessWidget {
  const TimerLabel({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /*
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
        const TextField(),
        */
        const ChangeTitle(),
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

class ChangeTitle extends StatefulWidget {
  const ChangeTitle({super.key});

  @override
  State<ChangeTitle> createState() => _ChangeTitleState();
}

class _ChangeTitleState extends State<ChangeTitle> {
  bool _isTextField = false;
  @override
  Widget build(BuildContext context) {

    return 
    /*Scaffold(
        body: Center(
            child:
                  */
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      InkWell(
        onTap: () {
          setState(() {
            _isTextField = !_isTextField;
          });
        },
        child: Text(
          'タイトル',
          style: TextStyle(
            fontSize: 22,
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
        ),
      ),
      _isTextField
          ? Container(
              margin: EdgeInsets.only(top: 20),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'タイトルを入力してください',
                ),
              ),
            )
          : Container(),
    ]);/*));*/
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