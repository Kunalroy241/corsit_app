import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'drawer.dart';
import 'package:lottie/lottie.dart';
import 'tools/reusuableneumorphic.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: reusuabledrawer(),
      body: Builder(builder: (context) {
        return Container(
          padding: EdgeInsets.all(10),
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: const [
              Colors.black,
              Colors.red,
            ]),
          ),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 400,
                    height: 40,
                    child: Row(
                      children: [
                        GestureDetector(
                          child: Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                          onTap: () {
                            Scaffold.of(context).openDrawer();
                          },
                        ),
                        SizedBox(
                          width: 90,
                        ),
                        NeumorphicText(
                          "CORSIT",
                          style: NeumorphicStyle(
                            depth: 3,
                            color: Color(0XFFEFF3F6),
                          ),
                          textStyle: NeumorphicTextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          padding: EdgeInsets.only(right: 10),
                          height: 200,
                          width: 200,
                          child: Lottie.asset('images/robot.json')),
                      Container(
                          height: 200,
                          width: 140,
                          child: Lottie.asset('images/robotku.json')),
                    ],
                  ),
                  NeumorphicText(
                    "Upcoming event:",
                    style: NeumorphicStyle(
                      depth: 3,
                      color: Color(0XFFEFF3F6),
                    ),
                    textStyle: NeumorphicTextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Neumorphic(
                    margin: EdgeInsets.only(top: 10),
                    style: NeumorphicStyle(
                      shape: NeumorphicShape.concave,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(12)),
                      depth: 3,
                      lightSource: LightSource.topLeft,
                      color: Colors.white,
                    ),
                    child: Container(
                        height: 150,
                        width: 400,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                    height: 100,
                                    width: 200,
                                    child:
                                        Lottie.asset('images/robotkun.json')),
                                SizedBox(height: 10),
                                Container(
                                    child: Text(
                                  'Arduino Programming',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 18),
                                )),
                              ],
                            ),
                            SizedBox(width: 10),
                            Neumorphic(
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
                                      primary: Color(0xFFCBC3E3),
                                      fixedSize: Size(100, 50)),
                                  child: Text(
                                    'Register',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  onPressed: () {},
                                ))
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  NeumorphicText(
                    "The Major Events:",
                    style: NeumorphicStyle(
                      depth: 3,
                      color: Color(0XFFEFF3F6),
                    ),
                    textStyle: NeumorphicTextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Neumorphic(
                      margin: EdgeInsets.only(top: 10),
                      style: NeumorphicStyle(
                        shape: NeumorphicShape.concave,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(12)),
                        depth: -3,
                        lightSource: LightSource.topLeft,
                        color: Colors.white,
                      ),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 180,
                        width: 400,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Reusuableneumorphic(text: "RoboExpo",anime: "images/dronee.json"),
                            Reusuableneumorphic(text: "Iot",anime: "images/iot.json"),
                            Reusuableneumorphic(text: "Recruitment",anime: "images/inter.json"),
                            Reusuableneumorphic(text: "Workshop",anime: "images/workshop.json"),
                            Reusuableneumorphic(text: "Workshop",anime: "images/robocor.json"), 
                          ],
                        ),
                      )),
                  SizedBox(
                    height: 30,
                  ),
                  NeumorphicText(
                    "Face Of Club:",
                    style: NeumorphicStyle(
                      depth: 3,
                      color: Color(0XFFEFF3F6),
                    ),
                    textStyle: NeumorphicTextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Neumorphic(
                    margin: EdgeInsets.only(top: 10),
                    style: NeumorphicStyle(
                      shape: NeumorphicShape.concave,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(12)),
                      depth: -3,
                      lightSource: LightSource.topLeft,
                      color: Colors.white,
                    ),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      height: 180,
                      width: 400,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Reusuableneumorphic(text: "Chairman",anime: "images/profile.json"),

                          Reusuableneumorphic(text: "RoboExpo",anime: "images/profilr.json"),
                          Reusuableneumorphic(text: "RoboExpo",anime: "images/profile.json"),
                          Reusuableneumorphic(text: "RoboExpo",anime: "images/profile.json"),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  NeumorphicText(
                    "We Work on:",
                    style: NeumorphicStyle(
                      depth: 3,
                      color: Color(0XFFEFF3F6),
                    ),
                    textStyle: NeumorphicTextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Neumorphic(
                    margin: EdgeInsets.only(top: 10),
                    style: NeumorphicStyle(
                      shape: NeumorphicShape.concave,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(12)),
                      depth: -3,
                      lightSource: LightSource.topLeft,
                      color: Colors.white,
                    ),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      height: 180,
                      width: 400,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Neumorphic(
                            margin: EdgeInsets.all(10),
                            style: NeumorphicStyle(
                              shape: NeumorphicShape.concave,
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(12)),
                              depth: -3,
                              lightSource: LightSource.topLeft,
                              color: Colors.white,
                            ),
                            child: Container(
                              padding: EdgeInsets.only(top:20),
                              height: 130,
                              width: 110,
                              child: Column(
                                children: const [
                                  Image(
                                      height: 60,
                                      width: 60,
                                      image:
                                          AssetImage('images/arduinologo.png')),
                                  SizedBox(height: 30),
                                  Text('Arduino',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900))
                                ],
                              ),
                            ),
                          ),
                          Neumorphic(
                            margin: EdgeInsets.all(10),
                            style: NeumorphicStyle(
                              shape: NeumorphicShape.concave,
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(12)),
                              depth: -3,
                              lightSource: LightSource.topLeft,
                              color: Colors.white,
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(10,10,10,10),
                                height: 130,
                                width: 110,
                                child:  Column(
                                  children: const [
                                    Image(
                                        height: 75,
                                        width: 100,
                                        image:
                                        AssetImage('images/android.png')),
                                    SizedBox(height: 10),
                                    Text('App Development',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w900))
                                  ],
                                ),
                          ),
                          ),
                          Neumorphic(
                            margin: EdgeInsets.all(10),
                            style: NeumorphicStyle(
                              shape: NeumorphicShape.concave,
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(12)),
                              depth: -3,
                              lightSource: LightSource.topLeft,
                              color: Colors.white,
                            ),
                            child: Container(
                              padding: EdgeInsets.all(10),
                              height: 130,
                              width: 110,
                              child:  Column(
                                children: const [
                                  Image(
                                      height: 70,
                                      width: 100,
                                      image:
                                      AssetImage('images/web.png')),
                                  SizedBox(height: 15),
                                  Text('Web Development',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900))
                                ],
                              ),
                            ),
                          ),
                      Neumorphic(
                        margin: EdgeInsets.all(10),
                        style: NeumorphicStyle(
                          shape: NeumorphicShape.concave,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(12)),
                          depth: -3,
                          lightSource: LightSource.topLeft,
                          color: Colors.white,
                        ),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(10,20,10,10),
                          height: 130,
                          width: 110,
                          child:  Column(
                            children: [
                              Image(
                                  height: 60,
                                  width: 100,
                                  image:
                                  AssetImage('images/machine.png')),
                              SizedBox(height: 12),
                              Container(
                                margin: EdgeInsets.only(left: 17),
                                child: Center(
                                  child: Text('Machine Learning',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900)),
                                ),
                              ),
                             ],
                          ),
                         ),
                      ),



                          Neumorphic(
                            margin: EdgeInsets.all(10),
                            style: NeumorphicStyle(
                              shape: NeumorphicShape.concave,
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(12)),
                              depth: -3,
                              lightSource: LightSource.topLeft,
                              color: Colors.white,
                            ),
                            child: Container(
                              padding: EdgeInsets.all(10),
                              height: 130,
                              width: 110,
                              child:  Column(
                                children: const [
                                  Image(
                                      height: 90,
                                      width:120,
                                      image:
                                      AssetImage('images/video.png')),
                                  SizedBox(height: 10),
                                  Text('Video Editing',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900))
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  NeumorphicText(
                    "Connect us:",
                    style: NeumorphicStyle(
                      depth: 3,
                      color: Color(0XFFEFF3F6),
                    ),
                    textStyle: NeumorphicTextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Neumorphic(
                    margin: EdgeInsets.only(top: 10),
                    style: NeumorphicStyle(
                      shape: NeumorphicShape.concave,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(12)),
                      depth: -3,
                      lightSource: LightSource.topLeft,
                      color: Colors.white,
                    ),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      height: 60,
                      width: 400,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:  [
                        Neumorphic(
                          padding: EdgeInsets.all(2),

                          style: NeumorphicStyle(

                            shape: NeumorphicShape.concave,
                            boxShape:NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(12)
                               ),
                            depth: 3,
                            lightSource: LightSource.topLeft,
                            color: Colors.white,
                          ),
                          child: Icon(

                            FontAwesomeIcons.instagram,
                            color: Colors.red,
                            size: 35,
                          ),
                        ),
                          Neumorphic(
                            padding: EdgeInsets.all(2),

                            style: NeumorphicStyle(

                              shape: NeumorphicShape.concave,
                              boxShape:NeumorphicBoxShape.circle(
                              ),
                              depth: 3,
                              lightSource: LightSource.topLeft,
                              color: Colors.white,
                            ),
                            child: Icon(

                              FontAwesomeIcons.facebook,
                              color: Colors.blue,
                              size: 35,
                            ),
                          ),
                          Neumorphic(
                            padding: EdgeInsets.all(2),

                            style: NeumorphicStyle(

                              shape: NeumorphicShape.concave,
                              boxShape:NeumorphicBoxShape.roundRect(
                                 BorderRadius.circular(6)
                              ),
                              depth: 3,
                              lightSource: LightSource.topLeft,
                              color: Colors.white,
                            ),
                            child: Icon(

                              FontAwesomeIcons.linkedin,
                              color: Colors.blue,
                              size: 35,
                            ),
                          ),
                          Neumorphic(


                            style: NeumorphicStyle(

                              shape: NeumorphicShape.concave,
                              boxShape:NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(12)
                              ),
                              depth: 3,
                              lightSource: LightSource.topLeft,
                              color: Colors.white,
                            ),
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0,2,4,2),
                              child: Icon(
                                FontAwesomeIcons.youtube,
                                color: Colors.red,
                                size: 35,
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}



