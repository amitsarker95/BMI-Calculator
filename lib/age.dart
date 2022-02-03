import 'package:brand_new_bmi/weight.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constance.dart';

class AgeCard extends StatefulWidget {
  const AgeCard({Key? key}) : super(key: key);

  @override
  _AgeCardState createState() => _AgeCardState();
}

class _AgeCardState extends State<AgeCard> {
  int age = 18;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('AGE',style: kLabelTextStyle,),
        Text(age.toString(),style: kNumberStyle,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundIconButton(
              child: Icon(FontAwesomeIcons.minus,),
              onPressed: (){
                setState(() {
                  if(age > 0){
                    age--;
                  }
                });
              },
            ),


            SizedBox(width: 15.0,),


            RoundIconButton(
              child: Icon(FontAwesomeIcons.plus,),
              onPressed: (){
                setState(() {
                  age++;
                });
              },
            ),
          ],
        )
      ],
    );
  }
}
