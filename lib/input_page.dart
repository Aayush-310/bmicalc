import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_container.dart';
import 'icon_content.dart';
import 'constants.dart';

//defining the constants

//creating enum for gender types
enum Gender {
  male,
  female,
  none,
}

// new file  for the input_page
// ignore: use_key_in_widget_constructors
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // Color maleCardColour = kaInactiveCardColour;
  // Color femaleCardColour = kaInactiveCardColour;
  double _value = 10;
  int height = 100;

//initializing the selectGender variable with nullable property
  Gender? selectedGender;

  // void updateColour(Gender gender) {
  //   if (gender == Gender.male) {
  //     //using the ternary operator for if statements
  //     maleCardColour == kaInactiveCardColour
  //         ? kaActiveCardColour
  //         : kaInactiveCardColour;
  //     // if (maleCardColour == kaInactiveCardColour) {
  //     //   maleCardColour = kaActiveCardColour;
  //     // } else {
  //     //   maleCardColour = kaInactiveCardColour;
  //     // }
  //   }
  //   if (gender == Gender.female) {
  //     if (femaleCardColour == kaInactiveCardColour) {
  //       femaleCardColour = kaActiveCardColour;
  //     } else {
  //       femaleCardColour = kaInactiveCardColour;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI calculator"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            //first row with two containers
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    //using the onpress function passing
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    //using ternary operator
                    colour: selectedGender == Gender.male
                        ? kaActiveCardColour
                        : kaInactiveCardColour,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: "MALE",
                    ),
                  ),
                ),
                Expanded(
                    child: ReusableCard(
                  //using the on press function passing
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  //using a ternary operator
                  colour: selectedGender == Gender.female
                      ? kaActiveCardColour
                      : kaInactiveCardColour,
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
                ))
              ],
            ),
          ),
          Expanded(
              //second row with one container

              child: ReusableCard(
                  colour: kaInactiveCardColour,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        "Height",
                        style: kalabelTextStyle,
                      ),
                      Row(
                        textBaseline: TextBaseline.alphabetic,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        children: [
                          Text(
                            height.toString(),
                            style: kaNumberTextStyle,
                          ),
                          const Text(
                            "cm",
                            style: kalabelTextStyle,
                          ),
                          Expanded(
                            child: Slider(
                              thumbColor: const Color.fromARGB(0, 1, 30, 24),
                              min: 100,
                              max: 350,
                              activeColor: const Color.fromARGB(51, 2, 62, 11),
                              inactiveColor:
                                  const Color.fromARGB(199, 3, 239, 34),
                              value: height.toDouble(),
                              onChanged: (double newValue) {
                                setState(() {
                                  height = newValue.toInt();
                                });
                              },
                            ),
                          )
                        ],
                      )
                    ],
                  ))
              //  Row(
              //   children: <Widget>[
              //     Expanded(
              //       child:
              //        Container(
              //         child: Column(
              //           mainAxisAlignment: MainAxisAlignment.center,
              //           children: <Widget>[
              //             Text(
              //               "HEIGHT",
              //               style: kalabelTextStyle,
              //             ),
              //             const SizedBox(
              //               height: 3.0,
              //             ),
              //             const Text("VALUE"),
              //             Slider(
              //               activeColor: const Color.fromARGB(255, 255, 255,
              //                   255), // The color to use for the portion of the slider track that is active.
              //               inactiveColor: const Color.fromARGB(255, 132, 130,
              //                   130), // The color for the inactive portion of the slider track.
              //               thumbColor: Colors.red,
              //               min: 0.0,
              //               max: 100.0,
              //               value: _value,
              //               onChanged: (value) {
              //                 setState(() {
              //                   _value = value;
              //                 });
              //               },
              //             ),
              //           ],
              //         ),
              //         color: kaActiveCardColour,
              //         margin: const EdgeInsets.all(10.0),
              //       ),
              //     ),
              //   ],
              // ),
              ),
          Expanded(
            //last row with two expanded containers
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: kaInactiveCardColour,
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
                        colour: kaInactiveCardColour,
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
            height: kaBottomContainerHeight,
            color: kaBottomContaainerColour,
          ))
        ],
      ),
    );
  }
}
