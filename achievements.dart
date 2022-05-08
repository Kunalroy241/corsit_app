import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:clay_containers/clay_containers.dart';

class Achievements extends StatefulWidget {
  const Achievements({Key? key}) : super(key: key);

  @override
  _AchievementsState createState() => _AchievementsState();
}

class _AchievementsState extends State<Achievements> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Achievements'),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
          children: <Widget>[
            const Divider(
              height: 20,
              thickness: 2,
            ),
            // Container(
            //   color: Colors.white60,
            //   child: Row(
            //       mainAxisSize: MainAxisSize.min,
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Expanded(
            //           child: TextButton(
            //             onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context)=>const UserInfo()));},
            //             child: const Text(
            //               'User Information',
            //               style: TextStyle(fontSize: 30, color: Colors.black),
            //             ),
            //           ),
            //         ),
            //       ]),
            // ),
            // Container(
            //   color: Colors.white60,
            //   child: Row(
            //       mainAxisSize: MainAxisSize.min,
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Expanded(
            //           child: TextButton(
            //             onPressed: () {},
            //             child:const Text(
            //               'Settings',
            //               style: TextStyle(fontSize: 30, color: Colors.black),
            //             ),
            //           ),
            //         ),
            //       ]),
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Container(
                height: 80,
                color: Colors.white60,
                child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: TextButton(
                          onPressed: () {},
                          child: const Center(
                            child: Text(
                              'Achievement 1',
                              style: TextStyle(fontSize: 30, color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
            const Divider(
              height: 20,
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Container(
                height: 80,
                color: Colors.white60,
                child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: TextButton(
                          onPressed: () {},
                          child: const Center(
                            child: Text(
                              'Achievement 2',
                              style: TextStyle(fontSize: 30, color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
            const Divider(
              height: 20,
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Container(
                height: 80,
                color: Colors.white60,
                child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: TextButton(
                          onPressed: () {},
                          child: const Center(
                            child: Text(
                              'Achievement 3',
                              style: TextStyle(fontSize: 30, color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
            const Divider(
              height: 20,
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Container(
                height: 80,
                color: Colors.white30,
                child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: TextButton(
                          onPressed: () {},
                          child: const Center(
                            child: Text(
                              'Achievement 4',
                              style: TextStyle(fontSize: 30, color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
            const Divider(
              height: 20,
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Container(
                height: 80,
                color: Colors.white54,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () {},
                        child: const Center(
                          child: Text(
                            'Achievement 5',
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              height: 20,
              thickness: 2,
            ),
          ],
        ));
  }
}