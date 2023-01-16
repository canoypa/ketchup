import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final _workTimeSettingProvider = FutureProvider.autoDispose<int>((ref) async {
  final sharedPreferences = await SharedPreferences.getInstance();
  return sharedPreferences.getInt("default_work_time")!;
});

class WorkTimeSettingTile extends ConsumerWidget {
  const WorkTimeSettingTile({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(_workTimeSettingProvider);

    return data.maybeMap(
      data: (data) {
        return ListTile(
          title: const Text("デフォルトの作業時間"),
          subtitle: Text(data.value.toString()),
          onTap: () async {
            final value = await showDialog<int?>(
              context: context,
              builder: (context) =>
                  defaultWorkTimeSettingDialog(context, data.value),
            );

            if (value != null) {
              final sharedPreferences = await SharedPreferences.getInstance();
              await sharedPreferences.setInt("default_work_time", value);
              ref.invalidate(_workTimeSettingProvider);
            }
          },
        );
      },
      orElse: () {
        return const ListTile(
          title: Text("デフォルトの作業時間"),
        );
      },
    );
  }
}

Widget defaultWorkTimeSettingDialog(BuildContext context, int current) {
  final controller = TextEditingController(text: current.toString());

  return AlertDialog(
    title: const Text("デフォルトの作業時間"),
    content: TextField(
      controller: controller,
      autofocus: true,
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        suffixText: "分",
      ),
      onSubmitted: (value) {
        Navigator.pop(context, int.parse(controller.text));
      },
    ),
    actions: [
      TextButton(
        child: const Text("キャンセル"),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      TextButton(
        child: const Text("OK"),
        onPressed: () {
          Navigator.pop(context, int.parse(controller.text));
        },
      )
    ],
  );
}
