// ignore_for_file: prefer_const_constructors

import 'package:app_io/logic/cubit/firebase_cubit.dart';
import 'package:app_io/presentation/flora_fauna_screen/components/card.dart';
import 'package:app_io/presentation/flora_fauna_screen/components/search_bar.dart';
import 'package:app_io/presentation/flora_fauna_screen/components/title.dart';
import 'package:app_io/presentation/flora_fauna_screen/flora_screen.dart';
import 'package:app_io/presentation/home_screen/components/contribute.dart';
import 'package:app_io/presentation/home_screen/components/florafaunalist.dart';
import 'package:app_io/presentation/home_screen/components/recently_added.dart';
import 'package:app_io/presentation/home_screen/components/survival.dart';
import 'package:app_io/presentation/home_screen/components/title.dart';
import 'package:app_io/scheme/colorscheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'components/florafauna_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(gradient: backgroundGradient),
      child: ListView(children: [
        SizedBox(height: 32),
        goodMorning,
        SizedBox(height: 32),
        survivalCard,
        SizedBox(height: 24),
        contributeCard,
        SizedBox(height: 32),
        recentlyAdded,
        SizedBox(
          height: 8,
        ),
        floraFaunaList,
        SizedBox(
          height: 32,
        ),
      ]),
    );
    ;
  }
}
