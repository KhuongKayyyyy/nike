import 'package:flutter/material.dart';
import 'package:nike/Utils/theme.dart';
import 'package:nike/Views/homepage.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: appTheme, // Apply the custom theme
      home: Homepage(), // Set SignIn as the home widget
    );
  }
}