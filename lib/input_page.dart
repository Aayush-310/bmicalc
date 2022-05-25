import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_container.dart';
import 'icon_content.dart';

//defining the constants

const double bottomContainerHeight = 80.0;
const activeCardColour = Color(0xFF0e1436);
const inactiveCardColour = Color(0xFF242933);
const bottomContainerColour = Color(0xFFfe0167);

// new file  for the input_page
// ignore: use_key_in_widget_constructors
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColour = inactiveCardColour;
  Color femaleCardColour = inactiveCardColour;
  double _value = 10;

  //1 for male and 2 for female
  void updateColour(int gender) {
    if (gender == 1) {
      if (maleCardColour == inactiveCardColour) {
        maleCardColour = activeCardColour;
      } else {
        maleCardColour = inactiveCardColour;
      }
    }
    if (gender == 2) {
      if (femaleCardColour == inactiveCardColour) {
        femaleCardColour = activeCardColour;
      } else {
        femaleCardColour = inactiveCardColour;
      }
    }
  }

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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColour(1);
                      });
                    },
                    child: ReusableCard(
                      colour: maleCardColour,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: "MALE",
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColour(2);
                    });
                  },
                  child: ReusableCard(
                    colour: femaleCardColour,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: "FEMALE",
                    ),
                    //extracting the column with icon content
                    // cardChild: Column(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: const <Widget>[
                    //     Icon(
                    //       FontAwesomeIcons.venus,
                    //       size: 40.0,
                    //       color: Color(0xFFeef1f9),
                    //     ),
                    //     SizedBox(
                    //       height: 15.0,
                    //     ),
                    //     Text(
                    //       "FEMALE",
                    //       style:
                    //           TextStyle(fontSize: 15.0, color: Color(0xFFeef1f9)),
                    //     ),
                    //   ],
                    // ),
                  ),
                ))
              ],
            ),
          ),
          Expanded(
            //second row with one container

            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text("HEIGHT"),
                        const SizedBox(
                          height: 3.0,
                        ),
                        const Text("VALUE"),
                        Slider(
                          activeColor: Color.fromARGB(255, 255, 255,
                              255), // The color to use for the portion of the slider track that is active.
                          inactiveColor: Color.fromARGB(255, 132, 130,
                              130), // The color for the inactive portion of the slider track.
                          thumbColor: Colors.red,
                          min: 0.0,
                          max: 100.0,
                          value: _value,
                          onChanged: (value) {
                            setState(() {
                              _value = value;
                            });
                          },
                        ),
                      ],
                    ),
                    color: activeCardColour,
                    margin: const EdgeInsets.all(10.0),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            //last row with two expanded containers
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: inactiveCardColour,
                    cardChild: IconContent(
                      label: "HELLO",
                      icon: FontAwesomeIcons.mars,
                    ),
                    // Column(
                    //   children: const [Icon(FontAwesomeIcons.mars)],
                    // ),
                  ),
                ),
                Expanded(
                    child: ReusableCard(
                        colour: inactiveCardColour,
                        cardChild: IconContent(
                            label: "HELLO", icon: FontAwesomeIcons.mars)
                        // Column(children: const [Icon(FontAwesomeIcons.mars)]),
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
