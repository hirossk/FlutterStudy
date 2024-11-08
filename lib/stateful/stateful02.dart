import 'stateful03.dart';
import 'package:flutter/material.dart';

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Main();
  }
}

class _Main extends State<Main> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MainCenter(),
    );
  } // カウント値を保持する変数
}
