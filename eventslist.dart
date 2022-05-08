
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:clay_containers/clay_containers.dart';


class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Our Events'
          ),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
          children: <Widget>[
            const Divider(
              height: 10,
              thickness: 4,
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
              child: ClayContainer(
                color: Colors.white60,
                height: 200,
                child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: TextButton(
                          onPressed: () {},
                          child: const Center(
                            child: Text(
                              'ROBOEXPO 2k22',
                              style: TextStyle(fontSize: 30, color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      Image.asset('images/3.jpg'),
                    ]),
              ),
            ),
            const Divider(
              height: 10,
              thickness: 4,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ClayContainer(
                height: 200,
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
                              'ROBOCORE 2k20',
                              style: TextStyle(fontSize: 30, color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      Image.asset('images/1.jpg'),
                    ]),
              ),
            ),
            const Divider(
              height: 10,
              thickness: 4,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ClayContainer(
                height: 200,
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
                              'ROBOCORE 2k19',
                              style: TextStyle(fontSize: 30, color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      Image.asset('images/5.jpg'),
                    ]),
              ),
            ),
            const Divider(
              height: 10,
              thickness: 4,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ClayContainer(
                height: 200,
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
                              'ROBOCORE 2k18',
                              style: TextStyle(fontSize: 30, color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      Image.asset('images/4.jpg'),
                    ]),
              ),
            ),
            const Divider(
              height: 10,
              thickness: 4,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ClayContainer(
                height: 200,
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
                            'WORKSHOPS',
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    Image.asset('images/2.jpg'),
                  ],
                ),
              ),
            ),
            const Divider(
              height: 10,
              thickness: 4,
            ),
          ],
        ));
  }
}