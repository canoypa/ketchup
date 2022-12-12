import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

Page<dynamic> buildLicensesPage(context, state) {
  return const MaterialPage(
    child: Scaffold(
      body: SafeArea(
        child: MyLicensePage(),
      ),
    ),
  );
}

class MyLicensePage extends StatefulWidget {
  const MyLicensePage({
    super.key,
  });

  @override
  MyLicensePageState createState() => MyLicensePageState();
}

class MyLicensePageState extends State<MyLicensePage> {
  List<List<String>> licenses = [];

  @override
  void initState() {
    super.initState();

    LicenseRegistry.licenses.listen((l) {
      final packageName = l.packages.toList().map((e) => e).join('');
      final paragraphText = l.paragraphs.toList().map((e) => e.text).join('\n');

      licenses.add([packageName, paragraphText]);
      setState(() => licenses = licenses);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: licenses.length,
        itemBuilder: (context, index) {
          final license = licenses[index];

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
            ),
          );
        },
      ),
    );
  }
}
