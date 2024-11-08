import 'package:flutter/material.dart';

class Main extends Scaffold {
  const Main({super.key})
      : super(
          body: const Center(
            child: Column(
              children: [
                Text(
                  'First',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Text('Second'),
                Text('Third'),
              ],
            ),
          ),
        );
}
