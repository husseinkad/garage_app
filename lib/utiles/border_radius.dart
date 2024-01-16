import 'package:flutter/material.dart';

class CustomBorderRadius {
  // Constants for border radii
  static const double kDefaultBorderRadius = 12.0;
  static const double circleBorderRadius = 18.0;

  // Common border radius
  static const BorderRadius roundedBorder = BorderRadius.all(Radius.circular(kDefaultBorderRadius));
  static const BorderRadius circleBorder = BorderRadius.all(Radius.circular(circleBorderRadius));
}
