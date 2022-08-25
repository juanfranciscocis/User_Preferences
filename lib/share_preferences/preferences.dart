

import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  //DATA MEMBERS
  static late SharedPreferences _prefs;

  static String _name = '';
  static bool _isDarkMode = false;
  static int _gender = 1;

  //INIT
  static Future init() async{
    _prefs = await SharedPreferences.getInstance();
  }


  //GETTERS AND SETTERS
  static SharedPreferences get prefs => _prefs;

  static set prefs(SharedPreferences value) {
    _prefs = value;
  }

  static String get name{
    return _prefs.getString('name') ?? _name;
  }

  static set name(String value) {
    _name = value;
    _prefs.setString('name', value);
  }

  static int get gender{
    return _prefs.getInt('gender') ?? _gender;
  }

  static set gender(int value) {
    _gender = value;
    _prefs.setInt('gender', value);
  }

  static bool get isDarkMode{
   return _prefs.getBool('isDarkMode') ?? _isDarkMode;
  }

  static set isDarkMode(bool value) {
    _isDarkMode = value;
    _prefs.setBool('isDarkMode', value);
  }
}