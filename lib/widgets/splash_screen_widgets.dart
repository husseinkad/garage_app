
import 'package:flutter/material.dart';

Widget page1() {
  return Stack(
    alignment: Alignment.bottomRight,
    children: [

      Positioned(
        top: 0,
        bottom: 20,
        right: 0,
        child: Image.asset(
          'assets/ellipse1.png',
          scale: 1,
          fit: BoxFit.fill,
        ),
      ),

      Positioned(
        right: 60.0,
        bottom: 150.0,
        child: Image.asset(
          'assets/splash1.png',
          fit: BoxFit.fill,
          scale: 1.5,
        ),
      ),
    ],
  );
}

Widget page2() {
  return Stack(
    alignment: Alignment.centerLeft,
    children: [
      Positioned(
        bottom: 5,
        right: 0,
        child: Image.asset(
          'assets/ellipse2.png',
          fit: BoxFit.contain,
        ),
      ),
      Positioned(
        right: 90.0,
        bottom: 110.0,
        child: Image.asset(
          'assets/splash2.png',
          fit: BoxFit.fill,
          scale: 1.2,
        ),
      ),

    ],
  );
}

Widget page3() {
  return Stack(
    alignment: Alignment.bottomLeft,
    children: [
      Positioned(
        top: 0,
        right: 0,
        child: Image.asset(
          'assets/ellipse3.png',

          fit: BoxFit.fill,
        ),
      ),
      Positioned(
        right: 40.0,
        bottom: 30.0,
        child: Image.asset(
          'assets/splash3.png',
          fit: BoxFit.fill,
          scale: 1.3,
        ),
      ),
    ],
  );
}