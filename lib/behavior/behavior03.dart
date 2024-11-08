import 'package:flutter/material.dart';

// カウンターを加算するStatefulWidget
class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _count = 0; // カウントの初期値

  // ボタンが押されたときにカウントを増やす関数
  void _incrementCounter() {
    setState(() {
      _count++; // カウントを1増やす
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Example'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // カウントを表示するStatelessWidget
          CounterDisplay(count: _count), // StatelessWidgetにカウントを渡す
          ElevatedButton(
            onPressed: _incrementCounter, // ボタンが押されたときにカウントを増加
            child: const Text('Increment Counter'),
          ),
        ],
      ),
    );
  }
}

// カウントを表示するStatelessWidget
class CounterDisplay extends StatelessWidget {
  final int count; // カウント値を受け取る引数

  const CounterDisplay({super.key, required this.count});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Count: $count', // 渡されたカウント値を表示
      style: const TextStyle(fontSize: 32),
    );
  }
}

void main() {
  runApp(
    const MaterialApp(
      home: Counter(), // Counterウィジェットを表示
    ),
  );
}
