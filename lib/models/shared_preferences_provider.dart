// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';


// class SharedPreferencesProvider with ChangeNotifier {
//   late SharedPreferences _prefs;
//   bool _isLoggedIn = false;

//   SharedPreferencesProvider() {
//     _initSharedPreferences();
//   }

//   void _initSharedPreferences() async {
//     _prefs = await SharedPreferences.getInstance();
//     _isLoggedIn = _prefs.getBool('isLoggedIn') ?? false;
//     notifyListeners();
//   }

//   bool get isLoggedIn => _isLoggedIn;
// }

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesProvider with ChangeNotifier {
  late SharedPreferences _prefs;
  bool _isLoggedIn = false;

  SharedPreferencesProvider() {
    _initSharedPreferences();
  }

  void _initSharedPreferences() async {
    _prefs = await SharedPreferences.getInstance();
    _isLoggedIn = _prefs.getBool('isLoggedIn') ?? false;
    notifyListeners();
  }

  bool get isLoggedIn => _isLoggedIn;

  void setLoggedIn(bool value) async {
    _isLoggedIn = value;
    await _prefs.setBool('isLoggedIn', value);
    notifyListeners();
  }
}


