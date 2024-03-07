import 'dart:async';
import 'package:ezanimation/ezanimation.dart';
import 'package:flutter/material.dart';
import '../widget-constant/constWidget.dart';
import 'main-screen/Home/HomeScreen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>  {
  EzAnimation animation = EzAnimation(200.0, 600.0, Duration(seconds: 4),
      reverseCurve: Curves.bounceInOut);
  @override
  void initState(){
    animation.start();
    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
       // animation.reverse();
        NormalNav(ctx: context,screen: const HomeScreen());
      }
    });

  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return SafeArea(child: Scaffold(
      body: Center(
        child: AnimatedBuilder(
            animation: animation,
            builder: (context, snapshot) {
              return Center(
                child: Container(
                  width: animation.value,
                  height: animation.value,
                    child: Image.asset('assets/images/logo.jpg',),
                ),
              );
            }),
      ),

    ));
  }

}

