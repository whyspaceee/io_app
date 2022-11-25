// ignore_for_file: prefer_const_constructors

import 'package:app_io/data/models/entity_model.dart';
import 'package:app_io/scheme/colorscheme.dart';
import 'package:app_io/utils/string_extension.dart';
import 'package:flutter/material.dart';

class FloraFaunaCard extends StatelessWidget {
  final String type;
  final EntityModel model;
  final Image asset;

  const FloraFaunaCard(
      {super.key,
      required this.asset,
      required this.model,
      required this.type});

  @override
  Widget build(BuildContext context) {
    final BoxShadow cardShadow = BoxShadow(
        color: Colors.black.withOpacity(0.12),
        offset: Offset(0, 2),
        blurRadius: 4,
        spreadRadius: 0);

    return Container(
      width: 225,
      height: 150,
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(top: 5, bottom: 5, left: 2, right: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [cardShadow],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: yellow,
                  image: DecorationImage(image: asset.image)),
            ),
          ),
          SizedBox(height: 8),
          Text(
            model.name!.capitalize(),
            style: TextStyle(
                fontSize: 14, color: darkBlue, fontWeight: FontWeight.w600),
          ),
          Text(type.capitalize(),
              style: TextStyle(
                  fontSize: 12, color: type == 'fauna' ? red : green)),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Text(model.description!,
                  style: TextStyle(
                      fontSize: 10, fontWeight: FontWeight.w400, color: grey)),
            ),
          ),
        ],
      ),
    );
  }
}
