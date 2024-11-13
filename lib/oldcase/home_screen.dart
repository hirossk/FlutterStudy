import './counter.dart';
import 'package:flutter/material.dart';

// HomeScreen（カウンタの値を表示、StatefulWidgetでリビルド）
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // CounterProviderからCounterインスタンスを取得
    final counterProvider = CounterProvider.of(context)!.counter;

    return Scaffold(
      appBar: AppBar(
          title: const Text("InheritedWidget with StatefulWidget Example")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Counter Value: ${counterProvider.value}',
                style: const TextStyle(fontSize: 24)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  counterProvider.value++;
                });
              },
              child: const Text("Increment Counter"),
            ),
          ],
        ),
      ),
    );
  }
}
