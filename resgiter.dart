import 'package:flutter/material.dart';
import 'package:clay_containers/clay_containers.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blueAccent,
              title: const Center(
                child: Text(' Events!!',
                  style: TextStyle(
                    letterSpacing: 1.5,
                    fontFamily: 'OriginTech personal use',
                    color: Colors.white,),),
              ), ),
            body: Center(
              child: SafeArea(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[

                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextButton(onPressed:(){ },
                          child: ClayContainer(
                            color: Colors.white54,
                            height: 400.0,
                            width: 280.0,
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextButton(onPressed:(){ },
                          child: Image.asset('images/3.jpg',
                              width: 275, height: 400, fit: BoxFit.contain),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextButton(onPressed:(){ },
                          child: Image.asset('images/1.jpg',
                              width: 275,height: 400.0, fit: BoxFit.contain),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextButton(onPressed:(){ },
                          child: ClayContainer(
                            color: Colors.white54,
                            height: 400.0,
                            width: 300.0,
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextButton(onPressed:(){ },child: const Text('Some Sample Text - 1', style: TextStyle(fontSize: 28))),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextButton(onPressed:(){ },
                          child: ClayContainer(
                            color: Colors.white54,
                            height: 400.0,
                            width: 300.0,
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextButton(onPressed:(){ },
                          child: Image.asset('images/4.jpg',
                              width: 300, height: 400, fit: BoxFit.contain),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
        )
    );
  }
}