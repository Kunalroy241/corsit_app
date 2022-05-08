import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:robocore22/MyHome%20Page.dart';

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

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 1),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
            const Homepage()
            )
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Center(
        child: CircleAvatar(
          radius: 100.0,
          backgroundImage: AssetImage('images/3.jpg'),
        ),
      ),
    );
  }
}