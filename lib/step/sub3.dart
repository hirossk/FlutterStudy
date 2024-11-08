import 'package:flutter/material.dart'; // Flutterの基本的なUIウィジェットをインポート
import 'package:flutter_hooks/flutter_hooks.dart'; // Flutter Hooksをインポート

class MyApp extends HookWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // useStateフックを使ってカウンターの状態を保持
    final counter = useState(0);

    return MaterialApp(
      title: 'Counter App', // アプリのタイトル
      theme: ThemeData(
        primarySwatch: Colors.blue, // アプリ全体のテーマ
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('HookWidget Counter'), // アプリバーにタイトルを設定
        ),
        body: Center(
          // 画面中央にカウントの値を表示
          child: Text(
            'Count: ${counter.value}', // カウンターの値を表示
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          // ボタンが押されたときにカウントを増加
          onPressed: () {
            counter.value++; // カウンターの値を1増やす
          },
          child: const Icon(Icons.add), // プラスアイコンを表示
        ),
      ),
    );
  }
}
