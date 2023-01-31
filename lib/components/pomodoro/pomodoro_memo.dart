import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ketchup/models/pomodoro_memo.dart';
import 'package:ketchup/repository/pomodoro_memo.dart';
import 'package:nanoid/nanoid.dart';

final _pomodoroMemosProvider = FutureProvider.family
    .autoDispose<List<PomodoroMemo>, String>((ref, pomodoroId) async {
  return await PomodoroMemoRepository.getMemo(pomodoroId);
});

class Memo extends StatelessWidget {
  final String pomodoroId;

  const Memo({
    super.key,
    required this.pomodoroId,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _Input(pomodoroId: pomodoroId),
        _List(pomodoroId: pomodoroId),
      ],
    );
  }
}

class _Input extends ConsumerWidget {
  final String pomodoroId;

  final _inputController = TextEditingController();

  _Input({
    required this.pomodoroId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.all(8),
          child: Icon(Icons.notes),
        ),
        Flexible(
          child: TextField(
            controller: _inputController,
            decoration: const InputDecoration(
              hintText: "メモを追加",
              border: InputBorder.none,
            ),
            onSubmitted: (value) {
              _inputController.clear();

              final memo = PomodoroMemo(
                pomodoroId: pomodoroId,
                id: nanoid(16),
                createdAt: DateTime.now(),
                value: value,
              );
              PomodoroMemoRepository.insertMemo(memo);

              ref.invalidate(_pomodoroMemosProvider(pomodoroId));
            },
          ),
        ),
      ],
    );
  }
}

class _List extends ConsumerWidget {
  final String pomodoroId;

  const _List({
    required this.pomodoroId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final memos = ref.watch(_pomodoroMemosProvider(pomodoroId));

    return memos.maybeMap(
      data: (data) {
        return ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount: data.value.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(data.value[index].value),
              ),
            );
          },
        );
      },
      orElse: () {
        return const CircularProgressIndicator();
      },
    );
  }
}
