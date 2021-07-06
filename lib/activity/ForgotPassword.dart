import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yaamfoo_driver/values/ColorValues.dart';

class ForgotPassword extends StatefulWidget {
  String otp,mobile;

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".


  @override
  ForgotPasswordState createState() => ForgotPasswordState();
}

class ForgotPasswordState extends State<ForgotPassword> {
  int _counter = 0;
  TextEditingController mobile = new TextEditingController();

  String reply;


  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      backgroundColor: Color(0xff00F9FF),

      /*appBar: AppBar(
        title: new Text(""),
        backgroundColor: Colors.blue,
      ),*/
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            child: Column(
              children: <Widget>[
                new Container(
                  margin: EdgeInsets.fromLTRB(0.0, 80.0, 0.0, 0.0),
                  child: new Image.asset('image/forgot.png'),
                  width: 150.0,
                      height: 150.0,
                ),

                new Container(
                  margin: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 10.0),
                  child: new Text("Forget Password", style: TextStyle(
                    fontSize: 16.0,
                    color: ColorValues.TEXT_COLOR,
                    fontFamily: "customLight",

                    fontWeight: FontWeight.bold,
                  ),
                    textAlign: TextAlign.center,
                  ),
                ),
                new Container(
                  margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                  child: new Text("Enter email Address Link to your account", style: TextStyle(
                    fontSize: 14.0,
                    color: ColorValues.TEXT_COLOR,
                    fontFamily: "customLight",

                  ),
                    textAlign: TextAlign.center,
                  ),
                ),
          new Container(
           //height: 45.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(0),

            ),
            margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
            child:new Center(
              child: Container(

                padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                  child: TextFormField(


                    style: TextStyle(
                      color: ColorValues.TEXT_COLOR,
                      fontSize: 15.0,
                      fontFamily: "customLight",

                    ),
                    decoration: InputDecoration(
                     // fillColor: Colors.white, filled: true,
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        color: ColorValues.HINT_TEXT_COLOR,
                        fontSize: 15.0,
                        fontFamily: "customLight",


                      ),
                      hintText: "Enter Your Email",

                    ),


                  )
                  ,
                ),
                ),
                ),

                new Container(
                  height: 40,

                  margin: EdgeInsets.fromLTRB(100.0, 30.0, 100.0, 0.0),
                  child: new Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(5.0),
                    color: ColorValues.TEXT_COLOR,
                    child: MaterialButton(
                        minWidth: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                        onPressed: () {
                        },
                        child: Text(
                          "Reset Password",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "customRegular",

                            ),
                        )),
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