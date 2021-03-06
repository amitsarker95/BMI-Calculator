import 'package:flutter/material.dart';
import 'constance.dart';

class HeightCard extends StatefulWidget {
  const HeightCard({Key? key}) : super(key: key);

  @override
  _HeightCardState createState() => _HeightCardState();
}

class _HeightCardState extends State<HeightCard> {

  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 2.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'HEIGHT',
            style: kLabelTextStyle,
          ),
          SizedBox(height: 10.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                  height.toString(),
                style: kNumberStyle,
              ),
             const Text(
                  'cm',
                style: kLabelTextStyle,
              ),
            ],
          ),
          Slider(value: height.toDouble(),
              min: 120.0,
              max: 220.0,
              activeColor: kBottomButtonColor,
              inactiveColor: Colors.grey,
              onChanged:(double newValue){
            setState(() {
              height = newValue.round();
            });
          })
        ],
      ),
    );
  }
}
