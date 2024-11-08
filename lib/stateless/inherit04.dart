import 'package:flutter/material.dart';

class MainColumn extends Column {
  const MainColumn({super.key})
      : super(
          children: const [
            Text(
              'Hello Inherit',
              style: TextStyle(fontSize: 28),
            ),
            Text(
              'Hello Space',
              style: TextStyle(fontSize: 28),
            ),
          ],
        );
}
