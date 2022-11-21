// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app_io/presentation/home_screen/components/button.dart';
import 'package:app_io/scheme/colorscheme.dart';
import 'package:flutter/material.dart';

final contributeCard = Container(
    margin: EdgeInsets.symmetric(horizontal: 16),
    height: 240,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: contributeGradient,
        boxShadow: [boxShadow]),
    child: Stack(children: [
      Container(
        padding: EdgeInsets.fromLTRB(20, 16, 16, 32),
        width: double.infinity,
        height: 240,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              height: 120,
              decoration: BoxDecoration(color: Colors.transparent),
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Text('Contribute to',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.w600)),
                  ),
                  Positioned(
                    bottom: -20,
                    right: 0,
                    child: Text('CRUX',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 96,
                            color: Colors.white,
                            fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
            ),
            Button(title: 'Upload Flora or Fauna', color: green),
          ],
        ),
      ),
      Positioned(
          left: 0,
          bottom: 0,
          child: SizedBox(width: 212, child: Image.asset('assets/corn.png'))),
    ]));
