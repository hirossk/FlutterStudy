import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// MainColumnウィジェット（StatefulWidget）
// 状態を持つウィジェットで、ボタンを押したときにテキストが変わる
class MainColumn extends StatefulWidget {
  const MainColumn({super.key});

  @override
  // ignore: library_private_types_in_public_api
  // 状態を管理するクラスを作成
  _MainColumnState createState() => _MainColumnState();
}

// MainColumnの状態を管理するStateクラス
class _MainColumnState extends State<MainColumn> {
  String buttonText = 'Push Me'; // ボタンの初期テキスト

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center, // 子ウィジェットを中央に配置
      children: [
        // 最初のテキスト「Hello Stateful」を表示
        const Text(
          'Hello Stateful',
          style: TextStyle(fontSize: 28), // フォントサイズを28に設定
        ),
        // 2つ目のテキスト「Hello Space」を表示
        const Text(
          'Hello Space',
          style: TextStyle(fontSize: 28), // フォントサイズを28に設定
        ),
        // ElevatedButtonウィジェット（ボタン）
        ElevatedButton(
          onPressed: () {
            // ボタンが押されたときにボタンのテキストを変更
            setState(() {
              buttonText = 'You Pushed Me!'; // ボタンのテキストを変更
            });
            if (kDebugMode) {
              // デバッグモードで「Button pushed」というメッセージを出力
              print('Button pushed');
            }
          },
          child: Text(buttonText), // ボタンに表示されるテキストを更新
        ),
      ],
    );
  }
}
