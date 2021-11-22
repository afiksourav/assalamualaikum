

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reuseable_card.dart';

const activeCardColour = Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF111328);
const bottomContainerColour = Color(0xFFFB1555);

enum Gender{
  Male,
  Female,
  initialized_value,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  
  late Gender selectedGender = Gender.initialized_value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(child: GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedGender= Gender.Male;
                    });
                  },
                  child: reusableCard(colour: selectedGender == Gender.Male ? activeCardColour: inactiveCardColour,
                  cardChild: IconContent(icon: FontAwesomeIcons.mars,label: 'Male',),
                  ),
                )),
                Expanded(child: GestureDetector( 
                  onTap: (){
                    setState(() {
                    selectedGender= Gender.Female;
                    });
                  },
                  child: reusableCard(colour:selectedGender == Gender.Female ? activeCardColour: inactiveCardColour,
                  cardChild: IconContent(icon: FontAwesomeIcons.venus, label: 'Female',),
                  ),
                )),
              ],
            )),
            Expanded( child: Row(children: [
              Expanded(child: reusableCard(colour:activeCardColour,
                cardChild: Column(children: [],),))
            ],),),
            
            Expanded(
                child: Row(
              children: [
                Expanded(child: reusableCard(colour:activeCardColour, cardChild: Column(children: [],),)),
                Expanded(child: reusableCard(colour:activeCardColour, cardChild: Column(children: [],),)),
              ],
            )),
            Container(
              color:bottomContainerColour ,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height:80,
            )
          ],
          
        ));
  }
}

