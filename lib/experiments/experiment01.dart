import 'package:flutter/material.dart';
// import 'experiment02.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '最初の一歩',
      home: Text('Hello Text'),
      // home: Main(), // ホーム画面を表示
    );
  }
}
