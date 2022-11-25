// ignore_for_file: prefer_const_constructors

import 'package:app_io/scheme/colorscheme.dart';
import 'package:flutter/material.dart';

final goodMorning = Container(
  margin: EdgeInsets.symmetric(horizontal: 16),
  height: 55,
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Hello, Good Morning',
              style: TextStyle(
                  fontSize: 14, fontWeight: FontWeight.w400, color: grey)),
          Text(
            'Ramzy Izza W',
            style: TextStyle(
                fontSize: 22, color: darkBlue, fontWeight: FontWeight.w600),
          )
        ],
      ),
      Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100), color: darkBlue),
        child: Icon(
          Icons.person,
          color: Colors.white,
        ),
      )
    ],
  ),
);
