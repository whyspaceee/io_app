import 'package:app_io/scheme/colorscheme.dart';
import 'package:flutter/material.dart';

class ContributeTitle extends StatelessWidget {
  const ContributeTitle({super.key});

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
                'Contribute to Crux!',
                style: TextStyle(
                    fontSize: 32, color: darkBlue, fontWeight: FontWeight.w900),
              ),
              Text('Upload flora and fauna that you have found',
                  style: TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w400, color: grey)),
            ],
          ),
        ],
      ),
    );
  }
}
