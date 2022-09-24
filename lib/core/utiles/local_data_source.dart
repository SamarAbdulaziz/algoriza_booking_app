
import 'package:shared_preferences/shared_preferences.dart';

class CacheData {
  static late SharedPreferences prefs;

  static void init() async {
    prefs = await SharedPreferences.getInstance();
  }

  static Future<bool> setData({
    required String key,
    required String value,
  }) async {
    return await prefs.setString(key, value);
  }

  static String? getData({
    required String key,
  }) {
    return prefs.getString(key);
  }
}
