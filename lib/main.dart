import 'package:dars3/utils/app_constants.dart';
import 'package:dars3/views/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void changeThemeMode(bool isDark) {
    setState(() {
      AppConstants.themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.yellow,
        ),
      ),
      darkTheme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Colors.blue,
          appBarTheme: AppBarTheme(color: Colors.red)),
      themeMode: AppConstants.themeMode,
      home: Homescreen(onThemeModeChanged: changeThemeMode),
    );
  }
}
