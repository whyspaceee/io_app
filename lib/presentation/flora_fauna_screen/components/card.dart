// ignore_for_file: prefer_const_constructors

import 'package:app_io/data/models/entity_model.dart';
import 'package:app_io/presentation/home_screen/components/button.dart';
import 'package:app_io/scheme/colorscheme.dart';
import 'package:flutter/material.dart';

class FFListCard extends StatelessWidget {
  final Color color;
  final EntityModel model;
  const FFListCard({super.key, required this.model, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Container(
                decoration: BoxDecoration(
                    color: color, borderRadius: BorderRadius.circular(20))),
          ),
          SizedBox(width: 16),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                model.name!,
                style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    fontSize: 24,
                    color: darkBlue,
                    fontWeight: FontWeight.w900),
              ),
              Text('Uses',
                  style: TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w400, color: color)),
              SizedBox(
                height: 4,
              ),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Text(model.description!,
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: grey)),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Button(
                title: 'More Details',
                color: color,
              )
            ],
          ))
        ],
      ),
    );
  }
}
