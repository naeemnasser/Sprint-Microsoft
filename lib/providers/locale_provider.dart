import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocaleProvider extends ChangeNotifier {
  Locale? _locale;
  bool _isInitialized = false;
  
  Locale? get locale => _locale;
  bool get isInitialized => _isInitialized;
  
  Future<void> initialize() async {
    if (_isInitialized) return;
    
    try {
      final prefs = await SharedPreferences.getInstance();
      final languageCode = prefs.getString('languageCode');
      _locale = languageCode != null ? Locale(languageCode) : const Locale('en');
      _isInitialized = true;
      notifyListeners();
    } catch (e) {
      debugPrint('Error initializing LocaleProvider: $e');
      _locale = const Locale('en');
      _isInitialized = true;
      notifyListeners();
    }
  }
  
  Future<void> setLocale(Locale locale) async {
    if (_locale?.languageCode == locale.languageCode) return;
    
    _locale = locale;
    
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('languageCode', locale.languageCode);
    } catch (e) {
      debugPrint('Error saving locale: $e');
    }
    
    notifyListeners();
  }
}
