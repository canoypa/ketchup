import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final breakTimeSettingProvider = FutureProvider<int>((ref) async {
  final sharedPreferences = await SharedPreferences.getInstance();
  return sharedPreferences.getInt("default_break_time")!;
});
