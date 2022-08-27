import 'package:hive_flutter/hive_flutter.dart';

Future<void> saveHive(String title, bool isWatched) async {
  Box? box = await Hive.openBox('box');
  isWatched = !isWatched;
  box.put(title, isWatched);
  print(isWatched);
}

Future<bool> fetchHive(String title) async {
  Box? box = await Hive.openBox('box');
  bool isWatched = box.get(title, defaultValue: false);
  return isWatched;
}