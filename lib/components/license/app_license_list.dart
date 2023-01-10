import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppLicenseList extends StatefulWidget {
  const AppLicenseList({
    super.key,
  });

  @override
  AppLicenseListState createState() => AppLicenseListState();
}

class AppLicenseListState extends State<AppLicenseList> {
  List<List<String>> licenses = [];
  StreamSubscription? _subscription;

  @override
  void initState() {
    super.initState();

    _subscription = LicenseRegistry.licenses.listen((l) {
      final packageName = l.packages.toList().map((e) => e).join('');
      final paragraphText = l.paragraphs.toList().map((e) => e.text).join('\n');

      licenses.add([packageName, paragraphText]);
      setState(() => licenses = licenses);
    });
  }

  @override
  void dispose() {
    super.dispose();
    _subscription?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: licenses.length,
        (context, index) {
          final license = licenses[index];

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (index != 0) const SizedBox(height: 16),
              Text(
                license[0],
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 16),
              Text(
                license[1],
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          );
        },
      ),
    );
  }
}
