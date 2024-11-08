import 'package:flutter/material.dart';
import 'stateful02.dart';

// MyAppクラスはStatelessWidgetを継承し、アプリ全体の設定を行う
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // デバッグバナーを非表示にする
      title: 'Stateful', // アプリのタイトルを設定
      home: Main(), // アプリ起動時に表示するホーム画面をMainクラスに設定
    );
  }
}
