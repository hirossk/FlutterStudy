import 'package:flutter/material.dart';
import 'inherit02.dart';

// MyAppクラスはMaterialAppを継承しており、アプリ全体の設定を行う
class MyApp extends MaterialApp {
  const MyApp({super.key})
      : super(
          debugShowCheckedModeBanner: false, // デバッグバナーを非表示にする
          title: '最初の一歩', // アプリのタイトルを設定
          home: const Main(), // アプリ起動時に表示するホーム画面をMainクラスに設定
        );
}
