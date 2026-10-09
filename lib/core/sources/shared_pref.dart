import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  bool isSeen = false;
  static const String _seenKey = 'Is Seen';
  static Future<void> setSeen() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(_seenKey, true);
  }

  static Future<bool> getSeen() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_seenKey) ?? false;
  }
}
