import 'package:flutter/material.dart'; // Flutterの基本的なUIウィジェットをインポート
import 'gamen2.dart'; // 別ファイルの画面 (gamen2.dart) をインポート

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // このウィジェットはアプリケーションのルートです
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo', // アプリのタイトル
      theme: ThemeData(
        // テーマ設定
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple), // シードカラーから色のテーマを生成
        useMaterial3: true, // Material Design 3のスタイルを使用
      ),
      home: const Gamen1(), // アプリのホーム画面としてGamen1を表示
    );
  }
}

class Gamen1 extends StatelessWidget {
  const Gamen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      // 画面中央に配置
      child: ElevatedButton(
          // ボタンの設定
          child: const Text('New画面'), // ボタンのテキスト
          onPressed: () {
            // ボタンが押されたときの処理
            Navigator.push(
              // 新しい画面に遷移する
              context,
              MaterialPageRoute(builder: (context) => const Gamen2()), // Gamen2へ遷移
            );
          }),
    );
  }
}
