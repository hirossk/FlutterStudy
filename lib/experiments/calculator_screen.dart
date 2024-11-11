import 'package:flutter/material.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          width: 350,
          height: 500,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(16.0),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(3, 3),
                blurRadius: 5,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Display
              Container(
                height: 80,
                alignment: Alignment.centerRight,
                color: Colors.grey[500],
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    "2+2=4",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),

              // Buttons
              Expanded(
                child: GridView.count(
                  crossAxisCount: 4,
                  mainAxisSpacing: 8.0,
                  crossAxisSpacing: 8.0,
                  children: [
                    // Number buttons
                    ...[
                      '7',
                      '8',
                      '9',
                      '×',
                      '4',
                      '5',
                      '6',
                      '÷',
                      '1',
                      '2',
                      '3',
                      '+',
                      '0',
                      '-',
                      '=',
                      'C'
                    ].map((text) => _buildButton(text)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButton(String text) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.yellow[700], // 背景色を設定
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0), // 角丸を設定
        ),
        elevation: 2, // ボタンの影を設定（0にすると影がなくなる）
      ),
      child: Text(text),
    );
  }
}
