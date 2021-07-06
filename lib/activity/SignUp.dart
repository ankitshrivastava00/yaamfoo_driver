import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yaamfoo_driver/activity/login.dart';
import 'package:yaamfoo_driver/activity/uploading/UploadDocuments.dart';

import 'ForgotPassword.dart';
import 'package:yaamfoo_driver/values/ColorValues.dart';
import 'StartScreen.dart';

class SignUp extends StatefulWidget {
  SignUp({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  SignUpState createState() => SignUpState();
}

class SignUpState extends State<SignUp> {
  int _counter = 0;
  bool obscureText = true, passwordVisible = false;

  TextEditingController em = new TextEditingController();
  TextEditingController pass = new TextEditingController();
  String reply="";
  String _chosenValue;


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
                      margin: EdgeInsets.fromLTRB(20.0, 30.0, 0.0, 0.0),
                      alignment: FractionalOffset(0.0, 0.5),
                      child: new Text(
                        "Create Account",
                        style: TextStyle(
                          fontSize: 25.0,
                          color: ColorValues.TEXT_COLOR,

                          fontFamily: "customRegular",
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),


                    new Container(
                      margin: EdgeInsets.fromLTRB(20.0, 30.0, 0.0, 0.0),
                      alignment: FractionalOffset(0.0, 0.5),
                      child: new Text(
                        "Name",
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
                              maxLines: 1,
                              style: TextStyle(
                                color: ColorValues.TEXT_COLOR,
                                fontSize: 15.0,
                                fontFamily: "customLight",

                              ),
                              decoration: InputDecoration(
                                //fillColor: Colors.white, filled: true,
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
                      margin: EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 0.0),
                      alignment: FractionalOffset(0.0, 0.5),
                      child: new Text(
                        "Email",
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
                              style: TextStyle(
                                color: ColorValues.TEXT_COLOR,
                                fontSize: 15.0,
                                fontFamily: "customLight",

                              ),

                              textAlign: TextAlign.start,
                              maxLines: 1,
                              decoration: InputDecoration(
                                //fillColor: Colors.white, filled: true,
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                  color: ColorValues.HINT_TEXT_COLOR,
                                  fontSize: 15.0,
                                  fontFamily: "customLight",

                                ),

                                hintText: "Ankit@gmail.com",

                                suffixIcon:    new Container(
                                  padding: EdgeInsets.all(14.0),
                                  child: new Image.asset('image/mail.png'),
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
                      margin: EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 0.0),
                      alignment: FractionalOffset(0.0, 0.5),
                      child: new Text(
                        "Phone",
                        style: TextStyle(
                          fontSize: 13.0,
                          color: ColorValues.TEXT_COLOR,
                          fontFamily: "customLight",
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    new Container(
                      height: 45,
                      margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),

                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(00),
                      ),
                      child:

                    Row(children: <Widget>[
                      new Expanded(
                      flex: 0,
                      child:
                      Container(
                        padding: EdgeInsets.only(bottom: 2.0),
                        margin: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          borderRadius: BorderRadius.circular(00),
                        ),
                        height:45,
                        child: DropdownButton<String>(
                          focusColor:Colors.white,
                          value: _chosenValue,
                          // elevation: 5,
                          style: TextStyle(color: Colors.white),
                          iconEnabledColor:ColorValues.TEXT_COLOR,
                          underline: Container(
                            height: 0,
                            color: Colors.deepPurpleAccent,
                          ),
                          items: <String>[
                            ' +91',
                            ' +92',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value,style:TextStyle(color:ColorValues.TEXT_COLOR,fontFamily: 'customLight'),),
                            );
                          }).toList(),
                          hint:Text(
                            " +91",
                            style: TextStyle(
                                color: ColorValues.TEXT_COLOR,
                                fontSize: 14,
                                //fontWeight: FontWeight.w500,
                                fontFamily: 'customLight'
                            ),
                          ),
                          onChanged: (String value) {
                            setState(() {

                            });
                          },
                        ),

                      ),
                    ),
new Expanded(
flex: 0,
child:   new Container(
  height: 20.0,
  width: 0.5,
  color: ColorValues.TEXT_COLOR,
)
),
                      new Expanded(
                        flex: 1,
                        child:  new Container(
                       // width: 310,
                        height: 45.0,

                        margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                        child: Container(
                              //margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),

                          child: new TextField(
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: ColorValues.TEXT_COLOR,
                                  fontSize: 15.0,
                                  fontFamily: "customLight",

                                ),
                                maxLines: 1,
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(
                                    color: ColorValues.HINT_TEXT_COLOR,
                                    fontSize: 15.0,
                                    fontFamily: "customLight",

                                  ),
                                  hintText: "9713172282",

                                  suffixIcon:    new Container(
                                    padding: EdgeInsets.all(14.0),
                                    child: new Image.asset('image/call.png'),
                                    width: 15.0,
                                    height: 15.0,
                                  ),

                                ),
                              ),

                            ))

                        ,
                      ),
                    ],
                    ),

                    ),
                    new Container(
                      margin: EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 0.0),
                      alignment: FractionalOffset(0.0, 0.5),
                      child: new Text(
                        "City",
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
                              style: TextStyle(
                                color: ColorValues.TEXT_COLOR,
                                fontSize: 15.0,
                                fontFamily: "customLight",

                              ),
                              textAlign: TextAlign.start,
                              maxLines: 1,
                              decoration: InputDecoration(
                                //fillColor: Colors.white, filled: true,
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                  color: ColorValues.HINT_TEXT_COLOR,
                                  fontSize: 15.0,
                                  fontFamily: "customLight",

                                ),
                                hintText: "Madhya Pradesh",

                                suffixIcon:    new Container(
                                  padding: EdgeInsets.all(13.0),
                                  child: new Image.asset('image/shape.png'),
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
                      margin: EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 0.0),
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
                                  padding: EdgeInsets.all(13.0),
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
                                      builder: (BuildContext context) => UploadDocuments()));
                            },
                            child: Text(
                              "Signup",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,fontSize: 15.0,
                                fontFamily: "customRegular",
                              ),
                            )),
                      ),
                    ),


                    new Container(
                      margin: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 20.0),
                      child:
                      new Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [

                          new Container(


                            child:
                            new Text(
                              "Already Create an Account, ",
                              style: TextStyle(
                                fontSize: 13.0,
                                color: ColorValues.TEXT_COLOR,

                                fontFamily: "customLight",

                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),

                          new GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (BuildContext context) => Login()));
                            },
                            child:  new Text(
                              " Sign In",
                              style: TextStyle(
                                  fontSize: 13.0,
                                  color: ColorValues.TEXT_COLOR,
                                  fontFamily: "customLight",
                                  fontWeight: FontWeight.bold
                              ),
                              textAlign: TextAlign.left,

                            ),
                          ),

                        ],
                      ),

                    ),

                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}