import 'package:flutter/material.dart';

class StepsText extends StatelessWidget {
  final String text;
  const StepsText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      alignment: Alignment.center,
      width: 240,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w700, fontSize: 17),
        ),
      ),
    );
  }
}
