//import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
//import 'package:robocore/try.dart';
import 'package:robocore/events.dart';
//import 'package:robocore/afterregister.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';


void main(){
  runApp( const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'CORSIT Login',
    home:Splash(),
  ));
}

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  // @override
  // void initState() {
  //   super.initState();
  //   Timer(const Duration(seconds: 1),
  //           ()=>Navigator.pushReplacement(context,
  //           MaterialPageRoute(builder:
  //               (context) =>
  //                const MyApp()
  //           )
  //       )
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Image.asset(
        'images/LOGO.png',
      ),
      nextScreen: const MyApp(),
      splashTransition: SplashTransition.scaleTransition,
      backgroundColor: Colors.white,
    );
  }
}