import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'addr/home_screen.dart'; // ホーム画面をインポート

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
