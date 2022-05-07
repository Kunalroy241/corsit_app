import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:clay_containers/clay_containers.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white10,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical:50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
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
                            hintText: 'Leader',
                            hintStyle: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white30,
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
                            hintText: 'Leader Number',
                            hintStyle: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white30,
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
                            hintText: 'Leader Mail',
                            hintStyle: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white30,
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
                            hintText: 'Member',
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
                            hintText: 'Member',
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
                            hintText: 'Member',
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}