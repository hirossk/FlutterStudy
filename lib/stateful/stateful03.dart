import 'package:flutter/foundation.dart';

import 'stateful04.dart';
import 'package:flutter/material.dart';

// MainCenter ウィジェット（StatefulWidget）
// 状態を持つウィジェットを作成
class MainCenter extends StatefulWidget {
  const MainCenter({super.key});

  @override
  State<MainCenter> createState() => _MainCenterState(); // 状態を管理するクラスを作成
}

// MainCenter の状態を管理する State クラス
class _MainCenterState extends State<MainCenter> {
  // 初期化する変数（メッセージの初期値を設定）
  String message = "最初のメッセージ";

  // 状態の初期化処理
  @override
  void initState() {
    super.initState();
    message = "初期化されたメッセージ"; // メッセージを変更
    if (kDebugMode) {
      // デバッグモードでログを出力
      print("initStateが呼ばれました");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // 中央に配置
        children: [
          // メッセージを表示
          Text(
            message, // 状態に基づいたメッセージを表示
            style: const TextStyle(fontSize: 24), // フォントサイズを24に設定
          ),
          const MainColumn(), // 他のウィジェット（MainColumn）を追加
        ],
      ),
    );
  }
}
