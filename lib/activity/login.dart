import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yaamfoo_driver/activity/OtpVerify.dart';
import 'package:yaamfoo_driver/activity/SignUp.dart';
import 'package:yaamfoo_driver/activity/uploading/VehicleRegistration.dart';
import 'package:yaamfoo_driver/component/rounded_input_field.dart';
import 'package:yaamfoo_driver/drawer/tabs/tabspage.dart';

import 'ForgotPassword.dart';
import 'package:yaamfoo_driver/values/ColorValues.dart';
import 'StartScreen.dart';

class Login extends StatefulWidget {
  Login({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login> {
  int _counter = 0;
  bool obscureText = true, passwordVisible = false;

  TextEditingController em = new TextEditingController();
  TextEditingController pass = new TextEditingController();
  String reply="";



  Future<bool> _onWillPop() {
    Navigator.pushReplacement(context,
        new MaterialPageRoute(builder: (BuildContext context) => StartScreen()));
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return new WillPopScope(
       // onWillPop: _onWillPop,
        child:
    new Scaffold(
      backgroundColor: Color(0xff00F9FF),


      body: SingleChildScrollView(
        child: Center(
          child: Container(
          //  color: Color(0xff00F9FF),
            child: Column(
              children: <Widget>[
                new Container(
                  margin: EdgeInsets.fromLTRB(0.0, 80.0, 0.0, 0.0),
                  child: new Image.asset('image/toolbar_logo.png'),
                  width: 180.0,
              //    height: 80.0,
                ),

                new Container(
                  margin: EdgeInsets.fromLTRB(20.0, 50.0, 0.0, 0.0),
                  alignment: FractionalOffset(0.0, 0.5),
                  child: new Text(
                    "Let’s Get Started",
                    style: TextStyle(
                      fontSize: 25.0,
                      color: ColorValues.TEXT_COLOR,
                      fontFamily: "customRegular",
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),

                new Container(
                  margin: EdgeInsets.fromLTRB(20.0, 50.0, 0.0, 0.0),
                  alignment: FractionalOffset(0.0, 0.5),
                  child: new Text(
                    "Phone/Email",
                    style: TextStyle(
                      fontSize: 13.0,
                      color: ColorValues.TEXT_COLOR,
                      fontFamily: "customLight",
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                new Container(
                  height: 45.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(0),

                  ),
                  margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                  child:new Center(
                      child: Container(

                        padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                        child: new TextField(
                          textAlign: TextAlign.start,
                          maxLines: 1,
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

                            hintText: "Enter Here",

                            suffixIcon:    new Container(
                              padding: EdgeInsets.all(11.0),
                              child: new Image.asset('image/user.png'),
                              width: 15.0,
                              height: 15.0,
                            ),

                          ),
                        ),
                        decoration: new BoxDecoration(

                            border: new Border(

                                bottom: new BorderSide(
                                    color: ColorValues.TEXT_COLOR,
                                    style: BorderStyle.none))),
                      ))

                  ,
                ),


                new Container(
                  margin: EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0),
                  alignment: FractionalOffset(0.0, 0.5),
                  child: new Text(
                    "Password",
                    style: TextStyle(
                      fontSize: 13.0,
                      color: ColorValues.TEXT_COLOR,
                      fontFamily: "customLight",
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                new Container(
                  height: 45.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(0),

                  ),
                  margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                  child:new Center(
                      child: Container(

                        padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                        margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                        child: new TextField(
                          textAlign: TextAlign.start,
                          obscureText: true,
                          style: TextStyle(
                            color: ColorValues.TEXT_COLOR,
                            fontSize: 15.0,
                            fontFamily: "customLight",

                          ),
                          maxLines: 1,
                          decoration: InputDecoration(
                            //fillColor: Colors.white, filled: true,
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                              color: ColorValues.HINT_TEXT_COLOR,
                              fontSize: 15.0,
                              fontFamily: "customLight",

                            ),
                            hintText: "Password",

                            suffixIcon:    new Container(
                              padding: EdgeInsets.all(14.0),
                              child: new Image.asset('image/lock.png'),
                              width: 15.0,
                              height: 15.0,
                            ),

                          ),
                        ),
                        decoration: new BoxDecoration(

                            border: new Border(

                                bottom: new BorderSide(
                                    color: ColorValues.TEXT_COLOR,
                                    style: BorderStyle.none))),
                      ))

                  ,
                ),


                new Container(
                  height: 40,
                  margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                  child: new Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(5.0),
                    color: ColorValues.TEXT_COLOR,
                    child: MaterialButton(
                        minWidth: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.fromLTRB(2.0, 2.0, 2.0, 2.0),
                        onPressed: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      TabsPage(selectedIndex: 0)));
                        },
                        child: Text(
                          "Login",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,fontSize: 15.0,
                            fontFamily: "customRegular",
                          ),
                        )),
                  ),
                ),
          new Container(
            margin: EdgeInsets.fromLTRB(22.0, 15.0, 22.0, 10.0),
            child:
           new Row(
             mainAxisSize: MainAxisSize.max,
             mainAxisAlignment: MainAxisAlignment.spaceBetween,

             children: [
                new GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (BuildContext context) =>
                                SignUp()));
                  },
                  child:
                  new Container(

                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.0, color: ColorValues.TEXT_COLOR,),
                      ),),
                    child:
                  new Text(
                      "Create An Account",
                      style: TextStyle(
                        fontSize: 13.0,
                        color: ColorValues.TEXT_COLOR,
                        fontFamily: "customLight",
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
                new GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (BuildContext context) =>
                                ForgotPassword()));
                  },
                  child:  new Text(
                      "Forgot Password?",
                      style: TextStyle(
                        fontSize: 13.0,
                        color: ColorValues.TEXT_COLOR,
                        fontFamily: "customLight",
                      ),
                      textAlign: TextAlign.right,

                  ),
                ),

              ],
            ),

          ),
                new Container(
                  margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                  child: new Text("Or", style: TextStyle(
                    fontSize: 14.0,
                    color: ColorValues.TEXT_COLOR,
                    fontFamily: "customLight",
                  ),
                    textAlign: TextAlign.center,
                  ),
                ),



                new Container(
                  margin: EdgeInsets.fromLTRB(22.0, 5.0, 22.0, 0.0),
                  child:
                  new Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                  new Container(
                    //  height: 30,
                      width: 120.0,


                      padding: EdgeInsets.all(7.0),

                      decoration: new BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5.0),

                  ),

                  child:
                  new Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        new Container(
                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 0.0),
                          child: new Image.asset('image/facebook.png'),
                          width: 30.0,
                              height: 20.0,
                        ),
                        new Container(
                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                          child: new Text("Facebook", style: TextStyle(
                            fontSize: 12.0,
                            color: ColorValues.TEXT_COLOR,
                            fontFamily: "customRegular",
                          ),
                            textAlign: TextAlign.center,
                          ),
                        ),


                      ])
                  ),
                      new Container(
                        //  height: 30,
                         // width: MediaQuery.of(context).size.width,
                          width: 120.0,


                          padding: EdgeInsets.all(7.0),

                          decoration: new BoxDecoration(
                              color: Colors.white,
                            borderRadius: BorderRadius.circular(5.0),

                          ),

                          child:
                          new Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,

                              children: [
                                new Container(
                                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 0.0),
                                  child: new Image.asset('image/gmail.png'),
                                  width: 20.0,
                                  height: 20.0,
                                ),
                                new Container(
                                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                                  child: new Text("Gmail", style: TextStyle(
                                    fontSize: 12.0,
                                    color: ColorValues.TEXT_COLOR,
                                    fontFamily: "customRegular",
                                  ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),


                              ])
                      ),

                    ],
                  ),

                ),

                new GestureDetector(

                  child: new Container(
                    margin: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 20.0),
                    child: new Text("By Continuing, you agree to our Terms of Service Privacy Policy Content Policy", style: TextStyle(
                        fontSize: 12.0,
                      color: ColorValues.TEXT_COLOR,
                      fontFamily: "customLight",
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    )
    );
  }
}