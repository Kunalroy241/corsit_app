import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'drawer.dart';
import 'package:lottie/lottie.dart';
import 'tools/reusuableneumorphic.dart';
import 'tools/neumorphictext.dart';
import 'tools/variables.dart';
import 'registerpage.dart';
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Reusuabledrawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(kbuttoncolor),
        title:Center(
          child: Reusuabletext(

            Text: "CORSIT",size:40,weight: FontWeight.bold,),
        ),
        ),
       floatingActionButton: FloatingActionButton(backgroundColor: Color(kbuttoncolor),
         child: Icon(FontAwesomeIcons.plus),
         onPressed: (){},
       ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body:SafeArea(
        child: SingleChildScrollView(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Reusuableneumorphic(height: 250,width:500,
                  child:Neumorphic(

                      style: NeumorphicStyle(
                        shape: NeumorphicShape.concave,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(12)),
                        depth: -3,
                        lightSource: LightSource.topLeft,
                        color: Colors.white,
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color(kbuttoncolor),
                            fixedSize: Size(50,10)),
                        child: Text(
                          'Register',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (Context) => Registerpage()));
                        },
                      )),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Reusuableneumorphic(height: 100,width:100),
                  SizedBox(width: 10,),
                  Reusuableneumorphic(height: 100,width: 100),
                  SizedBox(width: 10,),
                  Reusuableneumorphic(height: 100,width: 100),
                ],
              ),
              SizedBox(height:15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Reusuableneumorphic(height: 100,width:100),
                  SizedBox(width: 10,),
                  Reusuableneumorphic(height: 100,width: 100),
                  SizedBox(width: 10,),
                  Reusuableneumorphic(height: 100,width: 100),
                ],
              ),
              SizedBox(height:80),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Iconneumorphic(child: kinstaicon),
                  Iconneumorphic(child: kfacebookicon),
                  SizedBox(width:20),
                  Iconneumorphic(child: klinkedin),
                Iconneumorphic(child: kyoutube),
                ],
              )

            ],
          )
        ),
      )
      
    );
  }
}

























  




