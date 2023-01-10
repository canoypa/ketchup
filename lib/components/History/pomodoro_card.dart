import 'package:duration/duration.dart';
import 'package:duration/locale.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:go_router/go_router.dart';

class PomodoroCard extends StatelessWidget {
  final String pomodoroTitle;
  final String categoryTitle;
  final Color categoryColor;
  final Duration duration; // startAtとendAtから計算

  const PomodoroCard({
    super.key,
    required this.pomodoroTitle,
    required this.categoryTitle,
    required this.categoryColor,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    final diff = prettyDuration(
      duration,
      locale: DurationLocale.fromLanguageCode(L10n.of(context).localeName) ??
          const EnglishDurationLocale(),
      first: true,
    );

    return Card(
      color: categoryColor,
      child: ListTile(
        title: Text(pomodoroTitle),
        subtitle: Text(categoryTitle),
        trailing: Text(diff),
        onTap: () {
          GoRouter.of(context).push("/pomodoro");
        },
      ),
    );
  }
}
