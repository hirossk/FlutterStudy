import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// MainColumnクラスはStatelessWidgetを継承し、複数のウィジェットを縦に並べる
class MainColumn extends StatelessWidget {
  const MainColumn({super.key});

  static const int count = 0; // 定数としてカウント値を定義

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // テキスト「Hello Stateless $count」を表示
        const Text(
          'Hello Stateless $count', // 定数countを表示に利用
          style: TextStyle(fontSize: 28), // フォントサイズを28に設定
        ),
        // テキスト「Hello Space」を表示
        const Text(
          'Hello Space',
          style: TextStyle(fontSize: 28), // フォントサイズを28に設定
        ),
        // ボタン「Push Me」を表示し、押下時にメッセージをデバッグ出力
        ElevatedButton(
          onPressed: () {
            if (kDebugMode) {
              print('pushed'); // デバッグモードでボタンが押されたことを出力
            }
          },
          child: const Text('Push Me'), // ボタンのテキストを設定
        ),
      ],
    );
  }
}
