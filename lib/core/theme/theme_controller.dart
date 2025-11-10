// lib/theme/theme_controller.dart

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../local_storage/storage.dart';

class ThemeController extends ChangeNotifier {

  final String _key = 'isDarkMode';

  bool _isDarkMode = false;
  bool get isDarkMode => _isDarkMode;

  ThemeMode get themeMode => _isDarkMode ? ThemeMode.dark : ThemeMode.light;

  ThemeController() {
    _loadTheme();
  }

  // Load saved theme preference
  Future<void> _loadTheme() async {
    final value = await storage.readValues(_key);
    _isDarkMode = (value == 'true');
    _updateSystemUIOverlay();
    notifyListeners();
  }

  // Toggle theme
  Future<void> toggleTheme() async {
    _isDarkMode = !_isDarkMode;
    await storage.setValues(_key, _isDarkMode.toString());
    _updateSystemUIOverlay();
    notifyListeners();
  }

  // Set a specific theme
  Future<void> setTheme(bool isDark) async {
    _isDarkMode = isDark;
    await storage.setValues(_key, isDark.toString());
    _updateSystemUIOverlay();
    notifyListeners();
  }

  // Update system UI overlay style
  void _updateSystemUIOverlay() {
    SystemChrome.setSystemUIOverlayStyle(
      _isDarkMode ? SystemUiOverlayStyle.light : SystemUiOverlayStyle.dark,
    );
  }
}
