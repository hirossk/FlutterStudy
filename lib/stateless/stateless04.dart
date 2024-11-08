import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MainColumn extends StatelessWidget {
  const MainColumn({super.key});

  static const int count = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Hello Stateless $count',
          style: TextStyle(fontSize: 28),
        ),
        const Text(
          'Hello Space',
          style: TextStyle(fontSize: 28),
        ),
        ElevatedButton(
          onPressed: () {
            if (kDebugMode) {
              print('pushed');
            }
          },
          child: const Text('Push Me'),
        )
      ],
    );
  }
}
