import 'package:flutter/material.dart'; // FlutterのUIライブラリをインポート

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'カウントアップアプリ',
      home: HomeScreen(), // ホーム画面を表示
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count = 0; // カウント値を保持する変数

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('カウントアップ'), // アプリバーにタイトルを設定
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'カウント: $count', // カウント値を表示
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ElevatedButton(
              onPressed: () {
                // ボタンが押されたらカウントを増加
                setState(() {
                  count++; // カウントを1増やす
                });
              },
              child: const Text('カウントアップ'), // カウントアップボタン
            ),
          ],
        ),
      ),
    );
  }
}
