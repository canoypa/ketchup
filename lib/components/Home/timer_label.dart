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
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              child: Icon(
                Icons.circle,
                color: Theme.of(context).colorScheme.outline,
              ),
              onTap: () => {
                // const ChangeColor(),
              },
            ),
            InkWell(
              onTap: () async {
                final String? selectedText = await showDialog<String>(
                  context: context,
                  builder: (context) => _buildChoseCategoryDialog(context),
                  );
              },
              child: Text(
                'カテゴリ',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}

Widget _buildChoseCategoryDialog(BuildContext context){
  final List<String> categories = ["勉強", "読書", "音楽"];
  
  return SimpleDialog(
      title: const Text('カテゴリーを選択'),
      children: [
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return SimpleDialogOption(
              child: Text(categories[index]),
              onPressed: () {
                Navigator.pop(context, 'が選択されました');
              },
            );
          },
        ),
        // SimpleDialogOption(
        //   /*child: Row(
        //     children: [
        //       const TextField(
        //         key: Key("uniqueKey"),
        //         textAlign: TextAlign.center,
        //         decoration: InputDecoration(
        //           hintText: "カテゴリーを入力してください",
        //           border: InputBorder.none,
        //         ),
        //       ),
        //       ElevatedButton(
        //         child: Text("追加"),
        //         onPressed: () {
        //           setState(() {});
        //         },
        //       ),
        //     ],
        //   ),*/
        //   child: Text(""),
        // ),
      ],
    );
}
/*
class ChangeColor extends StatefulWidget {
  const ChangeColor({super.key});

  @override
  State<ChangeColor> createState() => _ChangeColorState();
}

class _ChangeColorState extends State<ChangeColor> {
  // create some values
  Color pickerColor = Color(0xff443a49);
  Color currentColor = Color(0xff443a49);
  void changeColor(Color color) {
    setState(() => pickerColor = color);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: showDialog(
        builder: (context) => AlertDialog(
          title: const Text('Pick a color!'),
          content: SingleChildScrollView(
            child: MultipleChoiceBlockPicker(
              pickerColors: currentColors,
              onColorsChanged: changeColors,
            ),
          ),
          actions: [
            ElevatedButton(
              child: const Text('Got it'),
              onPressed: () {
                setState(() => currentColor = pickerColor);
                Navigator.of(context).pop();
              },
            ),
          ],
        ), context: context,
      ),
      builder: (context, AsyncSnapshot<dynamic> snapshot) {
        if (snapshot.hasData) {
          return Container(); // replace this with the widget you want to show after the dialog is closed
        } else {
          return Container(); // replace this with the widget you want to show while the dialog is open
        }
      },
    );
  }
}
*/