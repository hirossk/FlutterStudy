import 'package:flutter/material.dart';
import 'stateful02.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stateful',
      home: Main(), // ホーム画面を表示
    );
  }
}
