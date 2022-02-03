import 'package:flutter/material.dart';

class ResultCard extends StatelessWidget {
  const ResultCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF090C22),
        title: const Text(
          'BMI CALCULATOR',
          style: TextStyle(
            color: Color(0xFF8da099),
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            wordSpacing: 8.0,
            letterSpacing: 2.0,

          ),
        ),
      ),
    );
  }
}

