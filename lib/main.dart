import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sebha/HomeScreen.dart';
import 'package:sebha/tabBar.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Muslim',
      debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
            duration: 3000,
            splash: CircleAvatar(
               radius: 100,
                backgroundColor: Colors.grey,
                child: Image.asset("images/muslim.png",)
            ),
            splashIconSize: 150,
            nextScreen: tabBar(),
            splashTransition: SplashTransition.fadeTransition,
            pageTransitionType: PageTransitionType.bottomToTop,
            backgroundColor: Colors.black
        )
    );
  }
}


