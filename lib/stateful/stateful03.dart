import 'package:flutter/foundation.dart';

import 'stateful04.dart';
import 'package:flutter/material.dart';

// MainCenter ウィジェット（StatefulWidget）
class MainCenter extends StatefulWidget {
  const MainCenter({super.key});

  @override
  State<MainCenter> createState() => _MainCenterState();
}

// MainCenter の状態を管理する State クラス
class _MainCenterState extends State<MainCenter> {
  // 初期化する変数
  String message = "最初のメッセージ";

  // 状態の初期化処理
  @override
  void initState() {
    super.initState();
    message = "初期化されたメッセージ";
    if (kDebugMode) {
      print("initStateが呼ばれました");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            message,
            style: const TextStyle(fontSize: 24),
          ),
          const MainColumn(), // 他のウィジェットを追加
        ],
      ),
    );
  }
}
