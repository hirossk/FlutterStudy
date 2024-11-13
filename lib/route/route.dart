import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Named Route Sample',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // ルートを定義
      initialRoute: '/',
      routes: {
        '/': (context) => const FirstPage(),
        '/second': (context) => const SecondPage(),
      },
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Page"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Go to Second Page"),
          onPressed: () {
            // 名前付きルートを使って移動
            Navigator.pushNamed(context, '/second');
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Back to First Page"),
          onPressed: () {
            // 戻る際もNavigator.popを使う
            Navigator.pop(context);
            // Navigator.pushNamed(context, '/');
            // スタックのリプレイスをする
            // Navigator.pushReplacementNamed(context, '/');
          },
        ),
      ),
    );
  }
}
