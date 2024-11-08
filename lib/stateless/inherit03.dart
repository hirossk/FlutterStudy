import 'package:app01/stateless/inherit04.dart';
import 'package:flutter/material.dart';

class MainCenter extends Center {
  const MainCenter({super.key})
      : super(
          child:
              //     const Text(
              //   'Hello Me',
              //   style: TextStyle(fontSize: 28),
              // ),
              const MainColumn(),
        );
}
