import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  //key can be removed as its not needed for classes which do not move physically in the screen
  // const ReusableCard({
  //   Key? key,
  // }) : super(key: key);

  //constructors are needed for the property that is to be set while using the class
  // ignore: use_key_in_widget_constructors
  const ReusableCard({required this.colour, required this.cardChild});

  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: const EdgeInsets.all(15.0),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Color(0xFF0d1335)),
      padding: const EdgeInsets.all(25.0),
    );
  }
}
