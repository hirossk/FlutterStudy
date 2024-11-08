import 'package:flutter/material.dart';

// MainColumnクラスはColumnウィジェットを継承し、縦にウィジェットを配置
class MainColumn extends Column {
  const MainColumn({super.key})
      : super(
          children: const [
            // テキスト「Hello Inherit」を表示するTextウィジェット
            Text(
              'Hello Inherit',
              style: TextStyle(fontSize: 28), // フォントサイズを28に設定
            ),
            // テキスト「Hello Space」を表示するTextウィジェット
            Text(
              'Hello Space',
              style: TextStyle(fontSize: 28), // フォントサイズを28に設定
            ),
          ],
        );
}
