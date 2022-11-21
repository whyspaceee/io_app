// ignore_for_file: prefer_const_constructors

import 'package:app_io/logic/cubit/firebase_cubit.dart';
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

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          bottomNavigationBar: Container(
            child: SalomonBottomBar(
                currentIndex: _currentIndex,
                onTap: (i) => setState(() => _currentIndex = i),
                items: [
                  SalomonBottomBarItem(
                      icon: Icon(Icons.home),
                      title: Text('Home'),
                      selectedColor: lightBlue),
                  SalomonBottomBarItem(
                      icon: Icon(Icons.grass),
                      title: Text('Flora'),
                      selectedColor: green),
                  SalomonBottomBarItem(
                      icon: Icon(Icons.person),
                      title: Text('Fauna'),
                      selectedColor: red),
                  SalomonBottomBarItem(
                      icon: Icon(Icons.add),
                      title: Text('Upload'),
                      selectedColor: yellow)
                ]),
          ),
          backgroundColor: Colors.white,
          body: Container(
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
          )),
    );
  }
}
