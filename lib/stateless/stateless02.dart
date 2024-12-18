import 'stateless03.dart';
import 'package:flutter/material.dart';

// MainクラスはStatelessWidgetを継承し、画面のレイアウトを定義
class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // bodyにMainCenterウィジェットを設定し、画面の中央にコンテンツを表示
      body: MainCenter(),
    );
  }
}
