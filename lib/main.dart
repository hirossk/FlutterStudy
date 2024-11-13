import 'package:flutter/material.dart'; // Flutterの基本的なUIウィジェットをインポート
import 'package:hooks_riverpod/hooks_riverpod.dart'; // 状態管理ライブラリRiverpodをインポート
// import 'stateful/stateful01.dart'; // 別ファイルの画面 (gamen1.dart) をインポート
// import 'hookstep/sub7.dart';
// import 'oldcase/oldapp.dart';
import 'route/route.dart';

void main() {
  // アプリのエントリーポイント
  runApp(
    // 初期状態
    // const MaterialApp(
    //   // debugShowCheckedModeBanner: false,
    //   title: 'タイトル！！',
    //   home: Text('最初の一歩'), // ホーム画面を表示
    // ),
    // ２歩目
    // 他のファイルのWidgetを使って表示
    // const MyApp(),
    // ３歩目
    const ProviderScope(
      // ProviderScopeは、Riverpodの状態管理を使用するために必要
      child: MyApp(), // MyAppというウィジェットをルートとして起動
    ),
  );
}
