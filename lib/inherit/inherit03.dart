import 'package:app01/inherit/inherit04.dart';
import 'package:flutter/material.dart';

// MainCenterクラスはCenterウィジェットを継承し、中央に配置するウィジェットを定義
class MainCenter extends Center {
  const MainCenter({super.key})
      : super(
          // childにTextウィジェットを設定し、テキスト「Hello Me」を表示
          child: const Text(
            'Hello Me', // 表示するテキスト
            style: TextStyle(fontSize: 28), // テキストのスタイルを指定（フォントサイズを28に設定）
          ),
          // childにMainColumnウィジェットを設定する例（コメントアウト）
          // const MainColumn(),
        );
}
