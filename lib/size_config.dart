import 'package:flutter/widgets.dart';

class SizeConfig {
  static double screenWidth = 1;
  static double screenHeight = 1;
  static double defaultSize = 1;
  static Orientation? orientation;

  void init(BuildContext context) {
    MediaQueryData _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
    defaultSize = orientation == Orientation.landscape
        ? screenHeight * 0.024
        : screenWidth * 0.024;
  }
}
