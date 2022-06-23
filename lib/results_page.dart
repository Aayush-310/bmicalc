import 'package:bmicalc/constants.dart';
import 'package:bmicalc/reusable_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              child: const Text(
                "Your result",
                style: kaTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              boxShape: BoxShape.rectangle,
              colour: kaActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Normal",
                    style: kaResultTextStyle,
                  ),
                  Text(
                    "18.3",
                    style: kaBMItextStyle,
                  ),
                  Text(
                    "Your are overweight, eat less",
                    style: kaBodyTextStyle,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
