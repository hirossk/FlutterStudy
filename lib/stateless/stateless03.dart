import 'stateless04.dart';
import 'package:flutter/material.dart';

// MainCenterクラスはStatelessWidgetを継承し、中央に配置するウィジェットを定義
class MainCenter extends StatelessWidget {
  const MainCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      // childにMainColumnウィジェットを設定し、中央に配置
      child: MainColumn(),
    );
  }
}
