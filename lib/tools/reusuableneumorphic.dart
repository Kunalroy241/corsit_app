import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:lottie/lottie.dart';






class Reusuableneumorphic extends StatelessWidget {
  Reusuableneumorphic({required this.text,required this.anime});

  String text ;
  String anime;


  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      margin: const EdgeInsets.all(10),
      style: NeumorphicStyle(
        shape: NeumorphicShape.concave,
        boxShape: NeumorphicBoxShape.roundRect(
            BorderRadius.circular(12)),
        depth: -3,
        lightSource: LightSource.topLeft,
        color: Colors.white,
      ),
      child: Container(
        padding: EdgeInsets.only(top: 15),
        height: 130,
        width: 110,
        child: Column(
          children: [
            Lottie.asset(anime),
            const SizedBox(height: 30),
            Text(text,
                style: const TextStyle(
                    fontWeight: FontWeight.w900))
          ],
        ),
      ),
    );
  }
}
