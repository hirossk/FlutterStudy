import 'package:flutter/material.dart';
import 'inherit02.dart';

class MyApp extends MaterialApp {
  const MyApp({super.key})
      : super(
          debugShowCheckedModeBanner: false,
          title: '最初の一歩',
          home: const Main(), // ホーム画面を表示
        );
}
