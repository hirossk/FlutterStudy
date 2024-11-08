import 'package:flutter/material.dart'; // Flutterの基本的なUIウィジェットをインポート
import 'package:hooks_riverpod/hooks_riverpod.dart'; // Riverpodの状態管理をインポート
import 'fetch_address.dart'; // 住所取得関数をインポート
import 'address_provider.dart'; // 住所プロバイダをインポート

// 郵便番号入力画面を定義するウィジェット
class SecondScreen extends HookConsumerWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final postalCodeController = TextEditingController(); // 郵便番号入力用のコントローラ

    return Scaffold(
      appBar: AppBar(
        title: const Text('郵便番号入力画面'), // アプリバーにタイトルを設定
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // 子ウィジェットを中央に配置
          children: [
            TextField(
              controller: postalCodeController, // 入力フィールドのコントローラを指定
              decoration: const InputDecoration(labelText: '郵便番号'), // フィールドのラベル
            ),
            ElevatedButton(
              onPressed: () async {
                final postalCode = postalCodeController.text; // 入力された郵便番号を取得
                try {
                  // APIから住所を非同期で取得
                  final address = await fetchAddress(postalCode);
                  // 取得した住所をプロバイダに保存
                  ref.read(addressProvider.notifier).state = address;
                  // 元の画面に戻る
                  if (context.mounted) {
                    Navigator.pop(context);
                  }
                } catch (e) {
                  // エラーハンドリング
                  showDialog(
                    // ignore: use_build_context_synchronously
                    context: context, // エラーダイアログのコンテキスト
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Error'), // ダイアログのタイトル
                        content:
                            Text('Failed to fetch address: $e'), // エラーメッセージ
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop(); // ダイアログを閉じる
                            },
                            child: const Text('OK'), // ボタンのラベル
                          ),
                        ],
                      );
                    },
                  );
                }
              },
              child: const Text('住所へ変換'), // 住所取得ボタンのラベル
            ),
          ],
        ),
      ),
    );
  }
}
