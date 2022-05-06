import 'package:flutter/material.dart';

class DsColors {
  static const White = Colors.white;
  static const White90 = Color.fromRGBO(255, 255, 255, 0.9);
  static const White60 = Colors.white60;
  static const White38 = Colors.white38;

  static const Black = Color.fromRGBO(5, 29, 51, 1);
  static const Black90 = Color.fromRGBO(5, 29, 51, 0.9);
  static const Black60 = Color.fromRGBO(5, 29, 51, 0.6);
  static const Black38 = Color.fromRGBO(5, 29, 51, 0.38);

  static const Neutral50 = Color.fromRGBO(247, 250, 252, 1);
  static const Neutral200 = Color.fromRGBO(237, 243, 247, 1);
  static const Neutral400 = Color.fromRGBO(209, 219, 227, 1);
  static const Neutral500 = Color.fromRGBO(175, 191, 204, 1);
  static const Neutral600 = Color.fromRGBO(126, 147, 166, 1);
  static const Neutral700 = Color.fromRGBO(64, 91, 115, 1);
  static const Neutral900 = Color.fromRGBO(6, 23, 38, 1);

  static const BackgroundLighter = Color.fromRGBO(255, 255, 255, 1);
  static const BackgroundLight = Color.fromRGBO(237, 243, 247, 1);
  static const BackgroundDark = Color.fromRGBO(64, 91, 115, 1);
  static const BackgroundDarker = Color.fromRGBO(6, 23, 38, 1);

  static const PrimaryLight = Color.fromRGBO(68, 138, 255, 1);
  static const PrimaryLight15 = Color.fromRGBO(68, 138, 255, 0.15);
  static const PrimaryLight25 = Color.fromRGBO(68, 138, 255, 0.25);
  static const Primary = Color.fromRGBO(14, 96, 232, 1);
  static const PrimaryDark = Color.fromRGBO(7, 86, 166, 1);
  static const PrimaryMedium = Color.fromRGBO(14, 96, 232, 1);

  static const SecondaryLight = Color.fromRGBO(136, 224, 227, 1);
  static const Secondary = Color.fromRGBO(9, 219, 226, 1);
  static const SecondaryDark = Color.fromRGBO(0, 195, 201, 1);
  static const primaryGradientList = [
    Color.fromRGBO(14, 96, 232, 1),
    Color.fromRGBO(68, 138, 255, 1),
  ];
  static const primaryGradient = LinearGradient(
    colors: primaryGradientList,
    stops: [0.0366, 0.9373],
    begin: Alignment(0, 1),
    end: Alignment(0, -1),
  );
  static const secondaryGradientList = [
    Color.fromRGBO(241, 117, 130, 1),
    Color.fromRGBO(123, 14, 232, 1),
    Color.fromRGBO(30, 84, 232, 1),
    Color.fromRGBO(14, 96, 232, 1)
  ];
  static const secondaryGradient = LinearGradient(
    colors: secondaryGradientList,
    stops: [0.0, 0.5156, 0.99, 1.0],
    begin: Alignment(0, 1),
    end: Alignment(0, -1),
  );

  static const Error = Color.fromRGBO(232, 14, 14, 1);
  static const ErrorLight = Color.fromRGBO(255, 143, 143, 1);

  static const Sucess = Color.fromRGBO(0, 196, 128, 1);
  static const SucessLight = Color.fromRGBO(111, 222, 183, 1);

  static const Warning = Color.fromRGBO(255, 233, 110, 1);
  static const WarningLight = Color.fromRGBO(247, 233, 161, 1);
}
