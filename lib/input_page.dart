import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_container.dart';

//defining the constants

const double bottomContainerHeight = 80.0;
const activeCardColour = Color(0xFFfe0167);
const bottomContainerColour = Color(0xFFfe0167);

// new file  for the input_page
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI calculator"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            //first row with two containers
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColour,
                    cardChild: Column(
                      children: const <Widget>[
                        Icon(
                          FontAwesomeIcons.mars,
                          size: 40.0,
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                    child: ReusableCard(
                  colour: activeCardColour,
                  cardChild: Column(
                    children: const [
                      Icon(
                        FontAwesomeIcons.venus,
                        size: 40.0,
                      )
                    ],
                  ),
                ))
              ],
            ),
          ),
          Expanded(
            //second row with one container
            child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                  colour: activeCardColour,
                  cardChild: Column(
                    children: const [Icon(FontAwesomeIcons.mars)],
                  ),
                )),
              ],
            ),
          ),
          Expanded(
            //last row with two expanded containers
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColour,
                    cardChild: Column(
                      children: const [Icon(FontAwesomeIcons.mars)],
                    ),
                  ),
                ),
                Expanded(
                    child: ReusableCard(
                  colour: activeCardColour,
                  cardChild:
                      Column(children: const [Icon(FontAwesomeIcons.mars)]),
                ))
              ],
            ),
          ),

          // adding the bottom bar of red
          Expanded(
              child: Container(
            width: double.infinity,
            height: bottomContainerHeight,
            color: bottomContainerColour,
          ))
        ],
      ),
    );
  }
}
