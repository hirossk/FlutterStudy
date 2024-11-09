import 'package:flutter/material.dart'; // Flutterの基本的なUIウィジェットをインポート
import 'package:hooks_riverpod/hooks_riverpod.dart'; // 状態管理ライブラリRiverpodをインポート
import './experiments/experiment01.dart'; // 別ファイルの画面をインポート

void main() {
  // アプリのエントリーポイント
  runApp(
    const ProviderScope(
      // ProviderScopeは、Riverpodの状態管理を使用するために必要
      child: MyApp(), // MyAppというウィジェットをルートとして起動
    ),
  );
}
