import 'stateful03.dart';
import 'package:flutter/material.dart';

// MainクラスはStatefulWidgetを継承し、状態を持つウィジェット
class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Main(); // Mainウィジェットに対応する状態クラスを生成
  }
}

// _MainクラスはMainウィジェットの状態を管理
class _Main extends State<Main> {
  int count = 0; // カウント値を保持する変数

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // 最初の表示は文字だけ
      body: Text('とりあえず表示'),

      // 状態を変化させるボタンの実装例（コメントアウト）
      // body: ElevatedButton(
      //   onPressed: () {
      //     // ボタンが押されたらカウントを増加
      //     setState(() {
      //       count++; // カウントを1増やす
      //     });
      //   },
      //   child: Text('Push Count $count'), // カウント数を表示
      // ),

      // 他ファイルのウィジェットMainCenterを呼び出す例（コメントアウト）
      // body: MainCenter(),
    );
  }
}
