import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MainColumn extends StatefulWidget {
  const MainColumn({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MainColumnState createState() => _MainColumnState();
}

class _MainColumnState extends State<MainColumn> {
  String buttonText = 'Push Me'; // 初期ボタンテキスト

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Hello Stateful',
          style: TextStyle(fontSize: 28),
        ),
        const Text(
          'Hello Space',
          style: TextStyle(fontSize: 28),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              buttonText = 'You Pushed Me!'; // ボタンテキストを変更
            });
            if (kDebugMode) {
              print('Button pushed');
            }
          },
          child: Text(buttonText), // 更新されたボタンテキストを表示
        ),
      ],
    );
  }
}
