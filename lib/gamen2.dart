import 'package:flutter/material.dart'; // Flutterの基本的なUIウィジェットをインポート

class Gamen2 extends StatelessWidget {
  const Gamen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      // 画面中央に配置
      child: Column(
        // 縦方向にウィジェットを並べる
        mainAxisSize: MainAxisSize.min, // 子ウィジェットの最小限のスペースを使う
        children: [
          ElevatedButton(
            // ボタン1: 「New画面」
            child: const Text('New画面'), // ボタンのテキスト
            onPressed: () {
              // ボタンが押されたときの処理
              Navigator.push(
                // 新しい画面に遷移する
                context,
                MaterialPageRoute(builder: (context) => const Gamen2()), // Gamen2をもう一度表示
              );
            },
          ),
          ElevatedButton(
            // ボタン2: 「戻る」
            child: const Text('戻る'), // ボタンのテキスト
            onPressed: () {
              // ボタンが押されたときの処理
              Navigator.of(context).pop(); // 1つ前の画面に戻る
            },
          ),
        ],
      ),
    );
  }
}
