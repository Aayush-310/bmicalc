import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.onTap, required this.buttonTitle});
  final VoidCallback onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Expanded(
          child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kaLargeTextStyle,
          ),
        ),
        width: double.infinity,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        height: kaBottomContainerHeight,
        color: kaBottomContainerColour,
      )),
    );
  }
}
