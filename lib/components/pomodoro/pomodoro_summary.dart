import 'package:duration/duration.dart';
import 'package:duration/locale.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ketchup/app/pomodoro.dart';
import 'package:ketchup/components/History/pomodoro_list.dart';
import 'package:ketchup/components/category/picker.dart';
import 'package:ketchup/models/pomodoro_info.dart';
import 'package:ketchup/repository/pomodoro.dart';
import 'package:ketchup/repository/pomodoro_interval.dart';
import 'package:ketchup/store/category/provider.dart';

class PomodoroSummary extends ConsumerWidget {
  final PomodoroInfo info;

  const PomodoroSummary({
    super.key,
    required this.info,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categories = ref.watch(categoriesProvider);

    final category = categories
        .whenData((value) =>
            value.firstWhere((element) => element.id == info.categoryId))
        .valueOrNull;

    return Column(
      children: [
        if (category != null)
          ListTile(
            leading: Icon(
              Icons.circle,
              color: category.color,
              size: 24,
            ),
            title: Text(category.title),
            onTap: () async {
              final category = await showCategoryPicker(context);

              final newInfo = info.copyWith(categoryId: category?.id);
              PomodoroRepository.runUpdate(newInfo);
              ref.invalidate(pomodoroListState);
              ref.invalidate(pomodoroStateProvider);
            },
          ),
        FutureBuilder(
          future: PomodoroIntervalRepository.getTime(info.id),
          builder: (context, snapshot) {
            if (!snapshot.hasData) return const ListTile();

            final diff = prettyDuration(
              snapshot.data!,
              locale: DurationLocale.fromLanguageCode(
                      L10n.of(context).localeName) ??
                  const EnglishDurationLocale(),
              first: true,
            );

            return ListTile(
              title: Text(diff),
            );
          },
        ),
      ],
    );
  }
}
