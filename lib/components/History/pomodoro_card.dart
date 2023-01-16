import 'package:duration/duration.dart';
import 'package:duration/locale.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ketchup/core/scheme.dart';
import 'package:ketchup/models/pomodoro_info.dart';
import 'package:ketchup/repository/pomodoro_interval.dart';
import 'package:ketchup/store/category/provider.dart';

class PomodoroCard extends ConsumerWidget {
  final PomodoroInfo info;

  const PomodoroCard({
    super.key,
    required this.info,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final primary = Theme.of(context).colorScheme.primary;

    final categories = ref.watch(categoriesProvider);

    final category = categories
        .whenData((value) =>
            value.firstWhere((element) => element.id == info.categoryId))
        .valueOrNull;

    return Card(
      color: category != null
          ? CustomColorTokens.fromWithHarmonize(category.color, primary)
              .colorContainer
          : null,
      child: ListTile(
        title: Text(info.title ?? "無題"),
        subtitle: category != null ? Text(category.title) : null,
        trailing: _PomodoroDuration(pomodoroId: info.id),
        onTap: () {
          GoRouter.of(context).push("/pomodoro/${info.id}");
        },
      ),
    );
  }
}

class _PomodoroDuration extends ConsumerWidget {
  final String pomodoroId;

  const _PomodoroDuration({
    required this.pomodoroId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FutureBuilder(
      future: PomodoroIntervalRepository.getTime(pomodoroId),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final diff = prettyDuration(
            snapshot.data!,
            locale:
                DurationLocale.fromLanguageCode(L10n.of(context).localeName) ??
                    const EnglishDurationLocale(),
            first: true,
          );

          return Text(diff);
        }

        return const SizedBox();
      },
    );
  }
}
