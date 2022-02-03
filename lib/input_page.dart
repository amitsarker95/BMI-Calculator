import 'package:brand_new_bmi/age.dart';
import 'package:brand_new_bmi/height_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constance.dart';
import 'reuseable_card.dart';
import 'icon_page.dart';
import 'bottom_button.dart';
import 'height_page.dart';
import 'weight.dart';
import 'age.dart';

class InputPage extends StatefulWidget {


  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: ReuseableCard(
                      color: selectedGender == Gender.male
                          ? kActiveColor
                          : kInactiveColor,
                      cardChild: IconPage(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: ReuseableCard(
                      color: selectedGender == Gender.female
                          ? kActiveColor
                          : kInactiveColor,
                      cardChild: IconPage(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReuseableCard(
              color: kActiveColor,
              cardChild: HeightCard(),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                    color: kActiveColor,
                    cardChild: WeightCard(),
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    color: kActiveColor,
                    cardChild: AgeCard(),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(),
        ],
      ),
    );
  }
}
