// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app_io/presentation/home_screen/components/button.dart';
import 'package:app_io/scheme/colorscheme.dart';
import 'package:flutter/material.dart';

final survivalCard = Container(
    padding: EdgeInsets.fromLTRB(20, 0, 16, 0),
    width: double.infinity,
    height: 175,
    margin: EdgeInsets.symmetric(horizontal: 16),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: survivalGradient,
        boxShadow: [boxShadow]),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 8,
            ),
            Container(
              height: 63,
              width: 150,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    child: Text('Want to',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w600)),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Text('Survive?',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 32,
                            color: Colors.white,
                            fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
            ),
            Button(
              title: 'Open Survival Guide',
              color: yellow,
            ),
          ],
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/notebook.png'),
                    alignment: FractionalOffset.bottomRight)),
          ),
        )
      ],
    ));
