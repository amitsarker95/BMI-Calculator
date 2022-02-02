import 'package:flutter/material.dart';
import 'constance.dart';



class HeightCard extends StatefulWidget {
  const HeightCard({Key? key}) : super(key: key);

  @override
  _HeightCardState createState() => _HeightCardState();
}

class _HeightCardState extends State<HeightCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'HEIGHT',
        style: kLabelTextStyle,),
      ],
    );
  }
}
