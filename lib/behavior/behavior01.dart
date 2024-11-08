import 'package:flutter/material.dart';

// 引数を受け取るStatefulWidget
class MyStatefulWidget extends StatefulWidget {
  final String message; // 引数を定義

  const MyStatefulWidget({super.key, required this.message}); // コンストラクタで引数を受け取る

  @override
  // ignore: library_private_types_in_public_api
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

// 引数を使うStateクラス
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('StatefulWidget with Arguments')),
      body: Center(
        child: Text(
          widget.message, // 渡された引数を使用
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

void main() {
  runApp(
    const MaterialApp(
      home: MyStatefulWidget(
          message: 'Hello from StatefulWidget!'), // 引数を渡してMyStatefulWidgetを呼び出す
    ),
  );
}
