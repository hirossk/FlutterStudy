import 'package:flutter/material.dart'; // Flutterの基本的なUIウィジェットをインポート
import 'package:hooks_riverpod/hooks_riverpod.dart'; // Riverpodの状態管理をインポート

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo', // アプリのタイトル
      theme: ThemeData(
        // テーマ設定
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple), // シードカラーから色のテーマを生成
        useMaterial3: true, // Material Design 3のスタイルを使用
      ),
      home: const MyHomePage(), // ホーム画面としてMyHomePageを表示
    );
  }
}

// カウンターの状態を管理するProvider
final counterProvider = StateNotifierProvider<Counter, int>((_) => Counter());

// カウンターの状態を管理するクラス
class Counter extends StateNotifier<int> {
  Counter() : super(0); // 初期値を0に設定

  // カウンターをインクリメントするメソッド
  void increment() => state++;
}

class MyHomePage extends HookConsumerWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // counterProviderを監視して現在のカウントを取得
    final count = ref.watch(counterProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // アプリバーのタイトルを設定
        title: const Text('Riverpod counter example'),
      ),
      body: Center(
        // 画面中央にウィジェットを配置
        child: Column(
          // 子ウィジェットを縦に並べる
          mainAxisAlignment: MainAxisAlignment.center, // 中央揃えに設定
          children: <Widget>[
            const Text(
              'ボタンを押した回数:',
            ),
            Text(
              '$count', // 現在のカウントを表示
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // ボタンが押されたときにカウントをインクリメント
        onPressed: () => ref.read(counterProvider.notifier).increment(),
        child: const Icon(Icons.add), // プラスアイコンを表示
      ),
    );
  }
}
