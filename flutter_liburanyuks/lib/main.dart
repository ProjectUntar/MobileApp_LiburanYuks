import 'package:flutter/material.dart';
import 'screens/login.dart';
import 'screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final appThemeData = ThemeData(
      primarySwatch: Colors.orange,
      primaryColor: Colors.white,
      bottomAppBarColor: Colors.white,
      scaffoldBackgroundColor: Colors.grey[100],
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );

    return MaterialApp(
      title: 'Liburan Yuks!',
      theme: appThemeData,
      home: LoginPage(),
    );
  }
}
