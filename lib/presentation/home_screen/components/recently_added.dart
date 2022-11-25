import 'package:app_io/scheme/colorscheme.dart';
import 'package:flutter/material.dart';

final recentlyAdded = Container(
  margin: EdgeInsets.symmetric(horizontal: 16),
  height: 55,
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Recently added',
        style: TextStyle(
            fontSize: 22, color: darkBlue, fontWeight: FontWeight.w600),
      ),
      Text("Take a closer look at Crux's flora and fauna",
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              fontSize: 14, fontWeight: FontWeight.w400, color: grey)),
    ],
  ),
);
