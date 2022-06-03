import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  Future<void> saveToken(String token) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString('token', token);
    print(token);
  }

  Future<String?> getToken() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String? token = pref.getString('token');
    return token;
  }

  Future<void> saveName(String name) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString('name', name);
  }

  Future<String?> getName() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String? name = pref.getString('name');
    return name;
  }

  Future<bool> firstUse() async {
    SharedPreferences pref = await SharedPreferences.getInstance();

    if (pref.getBool('first_use') ?? true) {
      pref.setBool('first_use', false);
      return true;
    }
    return false;
  }
}
