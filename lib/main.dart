
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'homepage.dart';



void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:firstpage()
    );
  }
}
class firstpage extends StatefulWidget {
  const firstpage({Key? key}) : super(key: key);

  @override
  _firstpageState createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
  final formkey= GlobalKey<FormState>();
  TextEditingController email= new TextEditingController();
   signMeUp( ) {
    if (formkey.currentState!.validate()){
      return 0;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFEFF3F6),

      body:Container(
        height:double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(

          gradient: LinearGradient(
              colors: [Colors.black,
                Colors.red,
              ]),


        ),



        child: SafeArea(
          child: SingleChildScrollView(
            child: Container(

              child:
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children:<Widget>[

                    Container(
                      margin:EdgeInsets.fromLTRB(10,90,0,0),
                      child: Row(


                        children: [
                          NeumorphicText(
                            "CORSIT",
                            style: NeumorphicStyle(
                              depth:3,
                              color: Color(0XFFEFF3F6),

                            ),
                            textStyle:NeumorphicTextStyle(

                              fontSize:90,
                              fontWeight:FontWeight.bold,

                            ),
                          ),



                          Container(
                            margin: EdgeInsets.only(top:40,right: 40),

                            child: CircleAvatar(

                              backgroundColor: Colors.white,
                              radius: 13,
                              backgroundImage: AssetImage("images/logo.png"),
                            ),
                          ),
                        ],
                      ),
                    ),





                    Container(
                      margin: EdgeInsets.fromLTRB(17, 0, 0, 40),

                      child:
                      NeumorphicText(
                        "C L U B       O F      R O B O T I C S",
                        style: NeumorphicStyle(
                          depth:3,
                          color: Colors.teal,
                        ),
                        textStyle:NeumorphicTextStyle(
                          fontSize:20,
                          fontWeight:FontWeight.bold,
                        ),
                      ),




                    ),


                    Form(
                      key: formkey,
                      child:
                      Column(
                        children: [ Neumorphic(
                          margin: EdgeInsets.fromLTRB(10,10,30,30),
                          style:NeumorphicStyle(
                            shape:NeumorphicShape.concave,
                            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                            depth:-3,
                            lightSource:LightSource.topLeft,
                            color:Colors.white,
                          ),


                          child: TextFormField(
                            controller: email,
                            validator: (val){
                              return RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(val.toString()) ? null :  "Please input a valid email";
                            },

                            style: TextStyle(color: Colors.teal,fontWeight: FontWeight.bold),
                            obscureText: false,
                            decoration: InputDecoration(

                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.white70,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.white10,
                                  ),
                                ),
                                hintText: "Email",
                                hintStyle: TextStyle(color: Colors.teal),
                                prefixIcon: Icon(Icons.account_box,color:Colors.teal,) ,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                        ),
                          Neumorphic(
                            margin: EdgeInsets.fromLTRB(10,10,30,50),
                            style:NeumorphicStyle(
                              shape:NeumorphicShape.concave,
                              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                              depth:-3,
                              lightSource:LightSource.topLeft,
                              color:Colors.white,
                            ),


                            child: TextFormField(
                              validator:(val){
                                return val.toString().length>=8 ? null: "Input a valid password" ;
                              },

                              style: TextStyle(color: Colors.teal,fontWeight: FontWeight.bold),
                              obscureText: true,
                              decoration: InputDecoration(


                                  prefixIcon: Icon(Icons.lock,color:Colors.teal) ,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Colors.white70,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Colors.white10,
                                    ),
                                  ),
                                  hintText: "Password",
                                  hintStyle: TextStyle(color: Colors.teal,fontWeight: FontWeight.bold),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                            ),
                          ),

                        ],
                      ),

                    ),
                    Neumorphic(
                      margin: EdgeInsets.fromLTRB(10,5,25,80),

                      style:NeumorphicStyle(
                        shadowLightColor: Colors.black,
                        shape:NeumorphicShape.concave,
                        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                        depth:3,
                        lightSource:LightSource.bottom,
                        color:Colors.white10,
                      ),




                      child:
                      ElevatedButton(



                        child: Text('Login',
                            style:TextStyle(color:Colors.black38,
                                fontWeight:FontWeight.bold)),
                        style: ElevatedButton.styleFrom(
                          primary:Colors.teal,
                          shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          minimumSize:Size(400,60),

                        ),
                        onPressed: (){
                          if(signMeUp()==0) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (Context) => homepage()));
                          }





                        },
                      ),
                    ),









                  ]


              ),

            ),
          ),


        ),
      ),

    );
  }
}




