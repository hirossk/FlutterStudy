import 'package:flutter/material.dart'; // Flutterの基本的なUIウィジェットをインポート
import 'package:hooks_riverpod/hooks_riverpod.dart'; // Riverpodの状態管理をインポート
import 'package:http/http.dart' as http; // HTTPリクエストを扱うためのライブラリをインポート
import 'dart:convert'; // JSONデータを扱うためのライブラリをインポート

// 状態を保持する住所プロバイダ
final addressProvider = StateProvider<String>((ref) => ''); // 初期値は空文字

// APIから住所を取得する非同期関数
Future<String> fetchAddress(String postalCode) async {
  // 郵便番号を使ってAPIにリクエストを送信
  final response = await http.get(Uri.parse(
      'https://zipcloud.ibsnet.co.jp/api/search?zipcode=$postalCode'));

  // レスポンスのステータスコードが200（成功）であることを確認
  if (response.statusCode == 200) {
    // APIのレスポンスをJSONとしてデコード
    final data = jsonDecode(response.body);
    // 住所情報を取得して結合
    var address = data['results'][0]['address1'] +
        data['results'][0]['address2'] +
        data['results'][0]['address3'];
    return address; // APIから取得した住所を返す
  } else {
    // ステータスコードが200でない場合は例外をスロー
    throw Exception('Failed to load address');
  }
}

// アプリのエントリポイントとなるウィジェット
class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const MaterialApp(
      title: 'Address Fetcher', // アプリのタイトル
      home: HomeScreen(), // ホーム画面を表示
    );
  }
}

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
