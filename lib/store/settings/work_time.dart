import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final workTimeSettingProvider = FutureProvider<int>((ref) async {
  final sharedPreferences = await SharedPreferences.getInstance();
  return sharedPreferences.getInt("default_work_time")!;
});
