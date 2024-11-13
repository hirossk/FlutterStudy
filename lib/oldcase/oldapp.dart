import 'package:flutter/material.dart';
import './counter.dart';
import './home_screen.dart';

// メインアプリ
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterProvider(
        counter: Counter(),
        child: const HomeScreen(),
      ),
    );
  }
}
