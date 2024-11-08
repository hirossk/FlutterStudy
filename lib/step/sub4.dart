import 'package:flutter/material.dart'; // Flutterの基本的なUIウィジェットをインポート
import 'package:hooks_riverpod/hooks_riverpod.dart'; // Riverpodの状態管理をインポート

// 状態を保持するカウンタープロバイダ
final counterProvider = StateProvider<int>((ref) => 0); // 初期値は0

void main() {
  runApp(const ProviderScope(child: MyApp())); // ProviderScopeでラップしてアプリを起動
}

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const MaterialApp(
      title: 'Counter App',
      home: HomeScreen(), // ホーム画面を表示
    );
  }
}

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // counterProviderの現在の値を監視
    final count = ref.watch(counterProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'), // アプリバーにタイトルを設定
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Count: $count', // カウント値を表示
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ElevatedButton(
              onPressed: () {
                ref.read(counterProvider.notifier).state++; // カウンターを1増やす
              },
              child: const Text('Increment'), // ボタンのテキスト
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SecondScreen()), // 画面遷移
                );
              },
              child: const Text('Go to Second Screen'), // 次の画面に遷移するボタン
            ),
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends HookConsumerWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // counterProviderの現在の値を監視
    final count = ref.watch(counterProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'), // アプリバーにタイトルを設定
      ),
      body: Center(
        child: Text(
          'Shared Count: $count', // 共有されたカウント値を表示
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
