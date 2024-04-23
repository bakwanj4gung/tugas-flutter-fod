import 'package:flutter/material.dart';
import 'package:food_app_flutter/components/appbar.dart';

class Favourite extends StatelessWidget {
  const Favourite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            '"You are the epitome of uniqueness and grace, adorned with the splendor of a thousand stars."',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'ro',
              textBaseline: TextBaseline.ideographic
            ),
          ),
        )
      )
    );
  }
}