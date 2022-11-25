// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:app_io/presentation/contribute_screen/components/aiprompt.dart';
import 'package:app_io/presentation/contribute_screen/components/forms.dart';
import 'package:app_io/presentation/contribute_screen/components/steps.dart';
import 'package:app_io/presentation/contribute_screen/components/title.dart';
import 'package:app_io/presentation/flora_fauna_screen/components/search_bar.dart';
import 'package:app_io/scheme/colorscheme.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContributeScreen extends StatefulWidget {
  const ContributeScreen({super.key});

  @override
  State<ContributeScreen> createState() => _ContributeScreenState();
}

class _ContributeScreenState extends State<ContributeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(gradient: uploadGradient),
      child: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 32),
          ContributeTitle(),
          SizedBox(
            height: 24,
          ),
          StepsText(text: 'Step 1 - Choose Image'),
          SizedBox(
            height: 24,
          ),
          Column(
            children: [
              Text('Describe With Text',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: yellowText,
                      fontSize: 28)),
              SizedBox(
                height: 8,
              ),
            ],
          ),
          AIPrompt(),
          SizedBox(
            height: 32,
          ),
          StepsText(text: 'Step 2 - Enter Details'),
          UploadForms()
        ]),
      ),
    );
  }
}
