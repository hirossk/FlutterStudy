import 'package:flutter/material.dart';

class NewBody extends StatelessWidget {
  const NewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text(
            'First',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          const Text('Second'),
          const Text('Third'),
          FloatingActionButton(
            onPressed: () {
              // ignore: avoid_print
              print('Pushed me');
            },
          )
        ],
      ),
    );
  }
}
