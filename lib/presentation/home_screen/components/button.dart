// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String title;
  final Color color;
  const Button({super.key, required this.title, required this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      child: TextButton(
        style: ButtonStyle(
            padding:
                MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 8)),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(22))),
            backgroundColor: MaterialStateProperty.all(color),
            foregroundColor: MaterialStateProperty.all(Colors.white)),
        onPressed: () => {},
        child: Text(title,
            style: TextStyle(
                fontSize: 10,
                color: Colors.white,
                fontWeight: FontWeight.w600)),
      ),
    );
  }
}
