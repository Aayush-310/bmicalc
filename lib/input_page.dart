import 'package:bmicalc/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_container.dart';
import 'icon_content.dart';
import 'constants.dart';
import 'bottom_button.dart';

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
  // ignore: library_private_types_in_public_api
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // Color maleCardColour = kaInactiveCardColour;
  // Color femaleCardColour = kaInactiveCardColour;
  //double _value = 10;
  int height = 100;
  int weight = 30;
  int age = 10;
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
        title: const Center(child: Text("BMI calculator")),
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
                    boxShape: BoxShape.circle,
                    //using the onpressed function passing
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
                  boxShape: BoxShape.circle,
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
                  boxShape: BoxShape.rectangle,
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
                            child: SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                thumbColor:
                                    const Color.fromARGB(240, 200, 47, 47),
                                activeTrackColor:
                                    const Color.fromARGB(197, 136, 136, 223),
                                overlayColor:
                                    const Color.fromARGB(0x29, 9, 192, 248),
                                thumbShape: const RoundSliderThumbShape(
                                    enabledThumbRadius: 10.0,
                                    disabledThumbRadius: 8.0,
                                    elevation: 2.0,
                                    pressedElevation: 7.0),
                                overlayShape: const RoundSliderOverlayShape(
                                    overlayRadius: 11.0),
                              ),
                              child: Slider(
                                //for assigning just the thumb color
                                //thumbColor: const Color.fromARGB(0, 1, 30, 24),
                                min: 100,
                                max: 350,
                                // activeColor:
                                //     const Color.fromARGB(51, 2, 62, 11),
                                // inactiveColor:
                                //     const Color.fromARGB(199, 3, 239, 34),
                                value: height.toDouble(),
                                onChanged: (double newValue) {
                                  setState(() {
                                    height = newValue.toInt();
                                  });
                                },
                              ),
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
                      boxShape: BoxShape.circle,
                      colour: kaInactiveCardColour,
                      cardChild: Column(
                        children: [
                          const Text(
                            "Weight",
                            style: kalabelTextStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: kalabelTextStyle,
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              //crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                RoundIconButton(
                                  icon: FontAwesomeIcons.plus,
                                  onPressed: () {
                                    setState(() {
                                      weight = weight + 1;
                                    });
                                  },
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                RoundIconButton(
                                  icon: FontAwesomeIcons.minus,
                                  onPressed: () {
                                    setState(() {
                                      weight = weight - 1;
                                    });
                                  },
                                ),
                                // FloatingActionButton(
                                //     child: Icon(Icons.add), onPressed: () {}),
                                // FloatingActionButton(
                                //     onPressed: () {}, child: Icon(Icons.add))
                              ],
                            ),
                          ),
                        ],
                      )
                      // Column(
                      //   children: const [Icon(FontAwesomeIcons.mars)],
                      // ),
                      ),
                ),
                Expanded(
                  child: ReusableCard(
                    boxShape: BoxShape.circle,
                    colour: kaInactiveCardColour,
                    cardChild: Column(
                      children: [
                        const Text(
                          "age",
                          style: kalabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kalabelTextStyle,
                        ),
                        Expanded(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                }),
                            // FloatingActionButton(
                            //   child: Icon(Icons.add),
                            //   onPressed: () {},
                            // ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            )
                            // FloatingActionButton(
                            //   child: Icon(Icons.add),
                            //   onPressed: () {},
                            //   backgroundColor: Color.fromARGB(141, 11, 226, 79),
                            // ),
                          ],
                        ))
                      ],
                    ),
                    // cardChild: IconContent(
                    //   label: "HELLO",
                    //   icon: FontAwesomeIcons.mars,
                    // )
                    // Column(children: const [Icon(FontAwesomeIcons.mars)]),
                  ),
                )
              ],
            ),
          ),

          // adding the bottom bar of red
          BottomButton(
            buttonTitle: "CALCULATE",
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ResultsPage()));
            },
          )
        ],
      ),
    );
  }
}
//this can be an error where the the setstate may be defined inside the on pressed
// class RoundIconButton extends StatefulWidget {
//   //const RoundIconButton({Key? key}) : super(key: key);

//   RoundIconButton({required this.icon, required this.onPressed});
//   final IconData icon;
//   final Function onPressed;

//   @override
//   State<RoundIconButton> createState() => _RoundIconButtonState();
// }

// class _RoundIconButtonState extends State<RoundIconButton> {
//   @override
//   Widget build(BuildContext context) {
//     return RawMaterialButton(
//       child: Icon(widget.icon),
//       //disabled elevation
//       //enabled elevation
//       constraints: const BoxConstraints.tightFor(
//         width: 56.0,
//         height: 56.0,
//       ),
//       shape: const CircleBorder(),
//       fillColor: const Color.fromARGB(255, 21, 255, 4),
//       onPressed: onPressed,
//     );
//   }
// }
class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icon, required this.onPressed});
  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon),
          Ink(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff374ABE), Color(0xff64B6FF)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
          ),
        ],
      ),

      elevation: 0.0,
      onPressed: onPressed,
      //disabled elevation
      //enabled elevation
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: const CircleBorder(),
      fillColor: Color.fromARGB(158, 159, 240, 187),
    );
  }
}
