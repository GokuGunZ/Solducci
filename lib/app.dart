import 'package:flutter/material.dart';
import 'view/home/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Receipt Scanner',
      theme: ThemeData(useMaterial3: true),
      home: const HomeScreen(),
    );
  }
}
