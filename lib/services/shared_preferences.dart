import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService extends GetxService {
  late SharedPreferences _preferences; // Correct type declaration

  Future<void> init() async {
    _preferences =
        await SharedPreferences.getInstance(); // Remove incorrect cast
  }
  
  Future<void> saveData(String key, String value) async {
    await _preferences.setString(
      key,
      value,
    ); // Now using proper SharedPreferences method
  }

  String? getData(String key) {
    return _preferences.getString(key);
  }
}
