import 'package:flutter/material.dart';
class reusuabledrawer extends StatelessWidget {
  const reusuabledrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
          color: Colors.red,
          padding: EdgeInsets.only(left: 10,right: 10),
          child: Material(

              color: Colors.red,
              child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 60,
                  ),

                  Row(
                    children: [
                      CircleAvatar(radius: 50,

                      backgroundColor: Color(0xFF8B0000),
                      child: CircleAvatar(
                        radius: 45,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('images/logo.png'),
                      ),),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xFF8B0000),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            width: 120,

                            padding: EdgeInsets.all(10),
                            child: Text('LEARN',style: TextStyle(color: Colors.white,fontSize: 15),),
                          ),
                          SizedBox(height: 5),
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xFF8B0000),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            width: 150,
                            padding: EdgeInsets.all(10),
                            child: Text('BUILD',style: TextStyle(color: Colors.white,fontSize: 15,),),
                          ),
                          SizedBox(height: 5),
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0XFF8B0000),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            width: 120,
                            padding: EdgeInsets.all(10),
                            child: Text('PLAY',style: TextStyle(color: Colors.white,fontSize: 15),),
                          )

                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 15),
                  buildMenuItem(
                    text: 'About',

                  ),




                  const SizedBox(height: 15),
                  buildMenuItem(
                    text: 'Awards',


                  ),
                  const SizedBox(height: 15),
                  buildMenuItem(
                    text: 'Our Web Team',


                  ),
                  const SizedBox(height: 15),
                  buildMenuItem(
                    text: 'Our Android Team',


                  ),
                  const SizedBox(height: 15),
                  buildMenuItem(
                    text: 'Sponser',


                  ),
                  const SizedBox(height: 15),
                  buildMenuItem(
                    text: 'FAQ',


                  ),
                  const SizedBox(height: 15),
                  Divider(thickness: 3,color: Colors.white70,)
                ],
              )
          ),
        )
    );
  }

  Widget buildMenuItem({
    required String text,

  }) {
    final color = Colors.white;
    final hoverColor=Colors.white70;
    return ListTile(

      tileColor: Colors.redAccent,
      title: Text(text,style:TextStyle(color:color,fontSize: 15)),
        hoverColor: hoverColor,
      onTap: (){},
    );
  }
}