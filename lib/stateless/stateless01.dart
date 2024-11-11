import 'package:flutter/material.dart';
// import 'stateless02-checkbox.dart';
import 'stateless02.dart';

// MyAppクラスはStatelessWidgetを継承し、アプリ全体の設定を行う
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // デバッグバナーを非表示にする
      title: '最初の一歩', // アプリのタイトルを設定
      home: Main(),
      // home: Main(flag: false), // アプリ起動時に表示するホーム画面をMainクラスに設定
    );
  }
}
