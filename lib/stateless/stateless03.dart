import 'stateless04.dart';
import 'package:flutter/material.dart';

class MainCenter extends StatelessWidget {
  const MainCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: MainColumn(),
    );
  }
}
