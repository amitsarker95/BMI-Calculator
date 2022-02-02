import 'package:brand_new_bmi/constance.dart';
import 'package:flutter/material.dart';

class IconPage extends StatelessWidget {
  final IconData? icon;
  final String? label;

  IconPage({this.icon, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        const SizedBox(height: 15.0),

        Text(label.toString(),
        style: kLabelTextStyle, ),
      ],
    );
  }
}