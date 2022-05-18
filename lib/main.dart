import 'package:flutter/material.dart';
import 'input_page.dart';

//mostly contains the theme data of the app and every new page of the app has a new file

void main() {
  runApp(BmiCalculator());
}

class BmiCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(
          appBarTheme: const AppBarTheme(
            color: Color(0xFF323232),
          ),
          scaffoldBackgroundColor: const Color(0xFF353535),
          textTheme:
              const TextTheme(bodyText2: TextStyle(color: Colors.white))),
      home: InputPage(),
    );
  }
}
