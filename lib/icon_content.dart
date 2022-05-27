import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  IconContent({required this.icon, required this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      //centering the column
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 40.0,
          color: const Color(0xFFeef1f9),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          label,
          style: kalabelTextStyle,
        ),
      ],
    );
  }
}
