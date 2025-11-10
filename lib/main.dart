import 'package:flutter/material.dart';
import 'package:flutter_template/core/app_depencies.dart';
import 'package:flutter_template/core/theme/theme_controller.dart';

void main() async {
  runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final ThemeController _themeController = sl<ThemeController>();
  @override
  void initState() {
    super.initState();
    _themeController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Project',
      home: Center(),
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: _themeController.themeMode,
    );
  }
}
