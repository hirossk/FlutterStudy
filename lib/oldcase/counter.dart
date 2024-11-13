import 'package:flutter/material.dart';

// Counterクラス（値を保持）
class Counter {
  int value = 0;
}

// InheritedWidgetを継承して値を渡す
class CounterProvider extends InheritedWidget {
  final Counter counter;

  const CounterProvider(
      {super.key, required this.counter, required super.child});

  // 子Widgetからアクセスできるようにするためのメソッド
  static CounterProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CounterProvider>();
  }

  // 更新を通知するためのメソッド
  @override
  bool updateShouldNotify(covariant CounterProvider oldWidget) {
    return oldWidget.counter.value != counter.value;
  }
}
