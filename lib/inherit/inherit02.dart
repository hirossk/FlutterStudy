import 'package:app01/inherit/inherit03.dart';
import 'package:flutter/material.dart';

// MainクラスはScaffoldを継承し、アプリの基本的なレイアウトを提供
class Main extends Scaffold {
  const Main({super.key})
      : super(
          // bodyにMainCenterウィジェットを設定
          body: const MainCenter(),
        );
}
