import 'package:animations/animations.dart';
import 'package:app_io/presentation/flora_fauna_screen/fauna_screen.dart';
import 'package:app_io/presentation/flora_fauna_screen/flora_screen.dart';
import 'package:app_io/presentation/home_screen/home_screen.dart';
import 'package:app_io/scheme/colorscheme.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    FloraScreen(),
    FaunaScreen()
  ];
  List _backgroundColor = [backgroundGradient, floraGradient, faunaGradient];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      decoration: BoxDecoration(gradient: _backgroundColor[_currentIndex]),
      child: Scaffold(
          bottomNavigationBar: Container(
            child: SalomonBottomBar(
                currentIndex: _currentIndex,
                onTap: (i) => {
                      setState(() {
                        _currentIndex = i;
                      }),
                    },
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
          backgroundColor: Colors.transparent,
          body: Container(
            child: PageTransitionSwitcher(
                reverse: false,
                duration: Duration(milliseconds: 500),
                transitionBuilder: (
                  Widget child,
                  Animation<double> animation,
                  Animation<double> secondaryAnimation,
                ) {
                  return FadeThroughTransition(
                    fillColor: Colors.transparent,
                    animation: animation,
                    secondaryAnimation: secondaryAnimation,
                    child: child,
                  );
                },
                child: _widgetOptions[_currentIndex]),
          )),
    ));
  }
}
