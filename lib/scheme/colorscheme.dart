// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

final backgroundGradient = LinearGradient(
  stops: List.generate(2, (index) => index * 0.5),
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color.fromARGB(255, 209, 239, 255),
    Color.fromARGB(255, 246, 252, 255)
  ],
);

final floraGradient = LinearGradient(
  stops: List.generate(2, (index) => index * 0.5),
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color.fromARGB(255, 241, 255, 211),
    Color.fromARGB(255, 241, 241, 241)
  ],
);

final survivalGradient = LinearGradient(
  stops: List.generate(2, (index) => index * 1),
  begin: Alignment.topRight,
  end: Alignment.bottomCenter,
  colors: [
    Color.fromARGB(255, 126, 106, 235),
    Color.fromARGB(255, 106, 212, 235)
  ],
);

final contributeGradient = LinearGradient(
  stops: List.generate(2, (index) => index * 1),
  begin: Alignment.topRight,
  end: Alignment.bottomCenter,
  colors: [
    Color.fromARGB(
      255,
      64,
      106,
      255,
    ),
    Color.fromARGB(255, 106, 235, 219)
  ],
);

final lightBlue = Color.fromARGB(255, 55, 133, 251);

final darkBlue = Color.fromARGB(255, 2, 19, 40);

final grey = Color.fromARGB(255, 153, 156, 161);

final red = Color.fromARGB(255, 235, 106, 106);

final yellow = Color.fromARGB(255, 252, 209, 54);

final green = Color.fromARGB(255, 183, 215, 115);

final boxShadow = BoxShadow(
    color: Color.fromARGB(36, 0, 0, 0), offset: Offset(0, 7), blurRadius: 15);
