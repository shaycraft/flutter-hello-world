import 'package:flutter/material.dart';
import 'package:flutter_hello_world/first_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() {
    return _MyAppState();
  }
}

final appThemeData = ThemeData(
    primarySwatch: Colors.lime,
    buttonTheme: const ButtonThemeData(
        padding: EdgeInsets.all(30.0), buttonColor: Colors.amber));

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo', theme: appThemeData, home: const FirstRoute());
  }
}
