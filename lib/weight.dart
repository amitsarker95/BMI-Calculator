import 'package:brand_new_bmi/constance.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constance.dart';


class WeightCard extends StatefulWidget {
  const WeightCard({Key? key}) : super(key: key);


  @override
  _WeightCardState createState() => _WeightCardState();
}

class _WeightCardState extends State<WeightCard> {

  int weight = 40;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
            'WEIGHT',
          style: kLabelTextStyle,
        ),
        Text(weight.toString(),style: kNumberStyle,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
         children: [
           RoundIconButton(
             child: Icon(FontAwesomeIcons.minus,),
             onPressed: (){
               setState(() {
                 if(weight > 0){
                   weight--;
                 }
               });
             },
           ),


           SizedBox(width: 15.0,),


           RoundIconButton(
             child: Icon(FontAwesomeIcons.plus),
             onPressed: (){
               setState(() {
                 weight++;
               });
             },
           ),

         ],
        ),

      ],
    );
  }
}


class RoundIconButton extends StatelessWidget {
  const RoundIconButton({Key? key,this.child,this.onPressed}) : super(key: key);

  final Widget ? child;
  final VoidCallback ? onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: child,
      onPressed: onPressed,
      shape: CircleBorder(),
      elevation: 0.0,
      fillColor: kRoundIconButtonColor,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
    );
  }
}
