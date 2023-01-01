import 'package:auth_ui/resources/app_themes.dart';
import 'package:auth_ui/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: getApplicationTheme(),
      home: const WelcomeScreen(),
    );
  }
}
