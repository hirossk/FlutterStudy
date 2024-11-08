import 'package:flutter/material.dart'; // Flutterの基本的なUIウィジェットをインポート
import 'package:hooks_riverpod/hooks_riverpod.dart'; // Riverpodの状態管理をインポート

// 状態を保持するカウンタープロバイダ
final counterProvider = StateProvider<int>((ref) => 0);

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // counterProviderの現在の値を監視
    final count = ref.watch(counterProvider);

    return MaterialApp(
      title: 'Counter App', // アプリのタイトル
      theme: ThemeData(
        primarySwatch: Colors.blue, // アプリ全体のテーマ
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Simple Counter'), // アプリバーにタイトルを設定
        ),
        body: Center(
          // 中央にカウント表示
          child: Text(
            'Count: $count', // カウント値を表示
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          // ボタンが押されたときにカウントを増加
          onPressed: () {
            ref.read(counterProvider.notifier).state++; // カウンターを1増やす
          },
          child: const Icon(Icons.add), // プラスアイコンを表示
        ),
      ),
    );
  }
}
