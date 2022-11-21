import 'package:app_io/presentation/components/title.dart';
import 'package:app_io/scheme/colorscheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class FloraScreen extends StatefulWidget {
  const FloraScreen({super.key});

  @override
  State<FloraScreen> createState() => _FloraScreenState();
}

class _FloraScreenState extends State<FloraScreen> {
  int _currentIndex = 1;

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
            decoration: BoxDecoration(gradient: floraGradient),
            child: ListView(children: [SizedBox(height: 32), floraTitle]),
          )),
    );
  }
}
