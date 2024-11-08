import 'package:flutter/material.dart';

// 引数を受け取るStatelessWidget
class MyStatelessWidget extends StatelessWidget {
  final String message; // 引数を定義

  const MyStatelessWidget(
      {super.key, required this.message}); // コンストラクタで引数を受け取る

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('StatelessWidget with Arguments')),
      body: Center(
        child: Text(
          message, // 渡された引数を使用
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

void main() {
  runApp(
    const MaterialApp(
      home: MyStatelessWidget(
          message:
              'Hello from StatelessWidget!'), // 引数を渡してMyStatelessWidgetを呼び出す
    ),
  );
}
