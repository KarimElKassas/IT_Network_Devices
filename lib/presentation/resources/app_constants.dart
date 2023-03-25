import 'dart:collection';
import 'dart:convert';
import 'package:flutter/material.dart';
import '../../core/services/prefs_helper.dart';
import 'language_manager.dart';

class AppConstants {
  static const int animationDuration60 = 60; // in milliseconds
  static const int animationDuration300 = 300; // in milliseconds
  static const int animationDuration400 = 400; // in milliseconds
  static const int animationDuration600 = 600; // in milliseconds
  static const int animationDuration2000 = 2000; // in milliseconds
  static const int animationDuration4000 = 4000; //in milliseconds
  static const int toastTimeIOS = 3; //in seconds
  static String lastOpenedScreen = "";
  static const String prefsKeyLang = "PREFS_KEY_LANG";
  static const String prefsKeyTheme = "PREFS_KEY_THEME";
  static const String prefsFingerPrintKey = "FINGERPRINT";

  static void finish(BuildContext context, route) {
    Navigator.pushReplacementNamed(context, route);
  }

  static void finishWithArguments(
      BuildContext context, route, Object? arguments) {
    Navigator.pushReplacementNamed(context, route, arguments: arguments);
  }

  static void navigate(BuildContext context, route, Object? arguments) {
    Navigator.pushNamed(context, route, arguments: arguments);
  }

  static Map<String, dynamic> getMyData() {
    Map<String, dynamic> userMap = json.decode(Preference.getString("userModel")!) as Map<String, dynamic>;
    return userMap;
  }

  /*static void cacheMyData(UserModel userModel) {
    Map<String, dynamic> userMap = UserModel.toMap(userModel);
    Preference.setString("userModel", json.encode(userMap));
  }*/

  static Future<String> getAppLanguage() async {
    var key = Preference.prefs.getString(prefsKeyLang);
    if(Preference.prefs.containsKey(prefsKeyLang)){
      if(key!.isNotEmpty){
        return key == "English" ? LanguageType.ENGLISH.getValue() : LanguageType.ARABIC.getValue();
      }else{
        return LanguageType.ENGLISH.getValue();
      }
    }else{
      return LanguageType.ENGLISH.getValue();
    }
  }

  static ThemeMode getAppTheme() {
    String? theme = "";
    theme = Preference.prefs.getString(prefsKeyTheme);
    if(Preference.prefs.containsKey(prefsKeyTheme)){
      if(theme!.isNotEmpty){
        return theme == "Dark" ? ThemeMode.dark : ThemeMode.light;
      }else{
        return ThemeMode.light;
      }
    }else{
      return ThemeMode.light;
    }
  }

  static Future<void> changeAppTheme() async {
    ThemeMode currentTheme = getAppTheme();

    if (currentTheme == ThemeMode.dark) {
      // set light
      Preference.prefs.setString(prefsKeyTheme, "Light");
    } else {
      // set dark
      Preference.prefs.setString(prefsKeyTheme, "Dark");
    }
  }

  static Future<void> changeAppLanguage() async {
    String currentLang = await getAppLanguage();

    if (currentLang == LanguageType.ARABIC.getValue()) {
      // set english
      Preference.prefs.setString(prefsKeyLang, "English");
    } else {
      // set arabic
      Preference.prefs.setString(prefsKeyLang, "Arabic");
    }
  }

  static Future<Locale> getLocal() async {
    String currentLang = await getAppLanguage();

    if (currentLang == LanguageType.ARABIC.getValue()) {
      return ARABIC_LOCAL;
    } else {
      return ENGLISH_LOCAL;
    }
  }

  static bool isArabic() {
    return Preference.prefs.getString(AppConstants.prefsKeyLang) == "Arabic";
  }

  static bool isDark() {
    return Preference.prefs.getString(AppConstants.prefsKeyTheme) == "Dark";
  }
}