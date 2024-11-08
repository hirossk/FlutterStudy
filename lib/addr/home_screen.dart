import 'package:flutter/material.dart'; // Flutterの基本的なUIウィジェットをインポート
import 'package:hooks_riverpod/hooks_riverpod.dart'; // Riverpodの状態管理をインポート
import 'address_provider.dart'; // 住所プロバイダをインポート
import 'second_screen.dart'; // 住所取得画面をインポート

// ホーム画面を定義するウィジェット
class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final address = ref.watch(addressProvider); // プロバイダから住所を監視

    return Scaffold(
      appBar: AppBar(
        title: const Text('郵便番号アプリ'), // アプリバーにタイトルを設定
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // 子ウィジェットを中央に配置
          children: [
            Text(
              '住所: $address', // 住所を表示
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ElevatedButton(
              onPressed: () {
                // 住所取得画面に遷移
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondScreen()),
                );
              },
              child: const Text('郵便番号取得画面'), // ボタンのラベル
            ),
          ],
        ),
      ),
    );
  }
}
