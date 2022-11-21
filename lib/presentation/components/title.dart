import 'package:app_io/scheme/colorscheme.dart';
import 'package:flutter/material.dart';

final floraTitle = Container(
  margin: EdgeInsets.symmetric(horizontal: 16),
  height: 55,
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Flora',
            style: TextStyle(
                fontSize: 22, color: darkBlue, fontWeight: FontWeight.w600),
          ),
          Text('Here are some of the flora at Crux!',
              style: TextStyle(
                  fontSize: 14, fontWeight: FontWeight.w400, color: grey)),
        ],
      ),
    ],
  ),
);
