import 'package:app_io/scheme/colorscheme.dart';
import 'package:flutter/material.dart';

class FFTitle extends StatelessWidget {
  final String title;
  const FFTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontSize: 32, color: darkBlue, fontWeight: FontWeight.w900),
              ),
              Text('Here are some of the $title at Crux!',
                  style: TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w400, color: grey)),
            ],
          ),
        ],
      ),
    );
    ;
  }
}
