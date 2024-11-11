import 'package:flutter/material.dart';

// MainクラスはStatelessWidgetを継承し、画面のレイアウトを定義
class Main extends StatelessWidget {
  // コンストラクタでflagを受け取る
  const Main({super.key, required this.flag});
  final bool flag; // コンストラクタ引数としてflagを受け取る

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bodyにMainCenterウィジェットを設定し、画面の中央にコンテンツを表示
      body: Checkbox(
        value: flag,
        onChanged: (bool? value) {},
      ),
    );
  }
}
