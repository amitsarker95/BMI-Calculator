import 'package:flutter/material.dart';
import 'constance.dart';

class BottomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: kBottomContainer,
      color: kBottomButtonColor,
      child: FlatButton(
        onPressed: () {},
        child:const Text(
          'CALCULATE YOUR BMI',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22.0,
            color: Color(0xFFe0d5d6),
            letterSpacing: 2.0,
            wordSpacing: 3.0,
          ),
        ),
      ),
    );
  }
}