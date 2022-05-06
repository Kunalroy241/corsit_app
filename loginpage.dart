
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:math';
import 'package:clay_containers/clay_containers.dart';
import 'package:robocore/main.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int img=3;

  void changeState()
  {
    setState(() {
      img=Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white30,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical:50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ClayContainer(
                  color:Colors.white30,
                  height: 100,
                  width: 100,
                  borderRadius: 50,
                  emboss: true,
                  curveType: CurveType.convex,
                  child: TextButton(onPressed:(){ changeState(); },
                    child:CircleAvatar(
                      radius: 50.0,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('images/$img.jpg'),
                    ),
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('CORSIT',
                    style: TextStyle(
                        fontFamily: 'TESLA',
                        color: Colors.black,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),

                const Text('ROBOTICS CLUB OF SIT',
                  style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      letterSpacing: 2.5,
                      color: Colors.black54,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.black45,
                  ),
                ),
                Expanded(
                  flex: 0,
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 25.0),
                    child: ClayContainer(
                      depth: 30,
                      borderRadius: 10,
                      color: Colors.white30,
                      child: const ListTile(
                        leading: Icon(
                          Icons.person,
                          color: Colors.black54,
                        ),
                        title: TextField(
                          obscureText: false,
                          //controller: nameControlller,
                          decoration: InputDecoration(
                            //labelText: 'Enter mail/number:',
                            hintText: 'Username',
                            hintStyle: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white60,
                                fontFamily: 'SourceSansPro',
                                letterSpacing: 1.5
                            ),
                          ),

                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 0,
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 25.0),
                    child: ClayContainer(
                      depth: 30,
                      color: Colors.white30,
                      borderRadius: 10,
                      child: const ListTile(
                        leading: Icon(
                          Icons.lock,
                          color: Colors.black54,
                        ),
                        title: TextField(
                          obscureText: true,
                          //controller: passwordController,
                          decoration: InputDecoration(
                            //labelText: 'Enter mail/number:',
                            hintText: 'Password',
                            hintStyle: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white60,
                                fontFamily: 'SourceSansPro',
                                letterSpacing: 1.5
                            ),
                          ),

                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 0,
                  child: TextButton(onPressed: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(builder: (context) => const MyApp()));
                  },
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 30.0,horizontal: 25.0),
                      child: ClayContainer(
                        width: 200,
                        depth: 40,
                        color: Colors.white30,
                        borderRadius: 10,
                        spread: 15,
                        child: const ListTile(
                          title: Center(
                            child: Text('Login',
                              style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.black54,
                                  fontFamily: 'OriginTech personal use',
                                  letterSpacing: 1.5
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextButton(onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const MyApp()));
                    },
                      child: const Text('Forget Password?',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black54,
                            fontFamily: 'OriginTech personal use',
                            letterSpacing: 1.5
                        ),
                      ),
                    ),
                  ),
                ),
                TextButton( onPressed: (){ Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyHomePage()));},
                  child:  const Text('Go back to HomePage',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.blueGrey,
                      fontFamily: 'SourceSansPro',
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}