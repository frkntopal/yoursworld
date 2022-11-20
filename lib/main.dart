import 'package:flutter/material.dart';
import 'package:yours_world/selectcountry.dart';
import 'package:yours_world/world.dart';
import 'login.dart';
import 'loginscreen.dart';
import 'world.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your\'s World',
      routes: {
        '/': (context) => const LoginScreen(),
        '/login': (context) => const login(),
        '/world': (context) => world(),
        '/country': (context) => selectcountry(),
      },
    );
  }
}
