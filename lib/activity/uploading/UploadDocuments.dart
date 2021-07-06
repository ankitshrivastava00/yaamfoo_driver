import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yaamfoo_driver/activity/login.dart';
import 'package:yaamfoo_driver/activity/uploading/SingleUploadDocuments.dart';
import 'package:yaamfoo_driver/activity/uploading/VehicleRegistration.dart';

import 'package:yaamfoo_driver/values/ColorValues.dart';

class UploadDocuments extends StatefulWidget {
  UploadDocuments({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  UploadDocumentsState createState() => UploadDocumentsState();
}

class UploadDocumentsState extends State<UploadDocuments> {
  int _counter = 0;
  bool obscureText = true, passwordVisible = false;

  TextEditingController em = new TextEditingController();
  TextEditingController pass = new TextEditingController();
  String reply="";
  String _chosenValue;


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
                      child: new Image.asset('image/uploading_screen.png'),
                      width: 120.0,
                      //    height: 80.0,
                    ),

                    new Container(
                      margin: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0.0),
                      alignment: FractionalOffset(0.0, 0.5),
                      child: new Text(
                        "We Need To Verify Your ID",
                        style: TextStyle(
                          fontSize: 25.0,
                          color: ColorValues.TEXT_COLOR,

                          fontFamily: "customRegular",
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),

                    new Container(
                      margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                      alignment: FractionalOffset(0.0, 0.5),
                      child: new Text(
                        "select the type of document as you wish to verify",
                        style: TextStyle(
                          fontSize: 15.0,
                          color: ColorValues.TEXT_COLOR,

                          fontFamily: "customLight",
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),


                    new Container(
                //  height: 45.0,
                  decoration: BoxDecoration(
                    color: ColorValues.TEXT_COLOR,
                    borderRadius: BorderRadius.circular(0),

                  ),
                  margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                      padding: EdgeInsets.all(10.0),

                      child:
                      new InkWell(
                          child: new Row(
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child:  Image.asset(
                                  'image/id_card.png',
                                  height: 25.0,
                                  width: 25.0,
                                ),
                              ),
                              Expanded(
                                flex: 8,
                                child:new Padding(
                                  padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                                  child: new Text(
                                    "Aadhar Card",
                                    style: TextStyle(
                                        fontFamily: 'customLight',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15.0,
                                        color: Colors.white,
                                  ),
                                ),
                              ),
                              ),
                              Expanded(
                                flex: 1,
                                child:
                                Container(
                                  padding: EdgeInsets.all(5.0),

                                  decoration: BoxDecoration(
                                 //  image: Image.asset('image/arrow_circle.png'),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'image/arrow_circle.png'),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: BoxShape.circle,

                                  ),
                                  child:
                                  Image.asset(
                                    'image/right_arrow.png',
                                    height: 25.0,
                                    width: 25.0,
                                  ),                                ),
                              ),
                            ],
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        SingleUploadDocuments()));
                          }
                      )

                      ,
                    ),
                    new Container(
                //  height: 45.0,
                  decoration: BoxDecoration(
                    color: ColorValues.TEXT_COLOR,
                    borderRadius: BorderRadius.circular(0),

                  ),
                  margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                      padding: EdgeInsets.all(10.0),

                      child:
                      new InkWell(
                          child: new Row(
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child:  Image.asset(
                                  'image/credit_card.png',
                                  height: 25.0,
                                  width: 25.0,
                                ),
                              ),
                              Expanded(
                                flex: 8,
                                child:new Padding(
                                  padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                                  child: new Text(
                                    "PAN Card",
                                    style: TextStyle(
                                        fontFamily: 'customLight',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15.0,
                                        color: Colors.white,
                                  ),
                                ),
                              ),
                              ),
                              Expanded(
                                flex: 1,
                                child:
                                Container(
                                  padding: EdgeInsets.all(5.0),

                                  decoration: BoxDecoration(
                                 //  image: Image.asset('image/arrow_circle.png'),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'image/arrow_circle.png'),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: BoxShape.circle,

                                  ),
                                  child:
                                  Image.asset(
                                    'image/right_arrow.png',
                                    height: 25.0,
                                    width: 25.0,
                                  ),                                ),
                              ),
                            ],
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        SingleUploadDocuments()));
                          }
                      )

                      ,
                    ),
                    new Container(
                //  height: 45.0,
                  decoration: BoxDecoration(
                    color: ColorValues.TEXT_COLOR,
                    borderRadius: BorderRadius.circular(0),

                  ),
                  margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                      padding: EdgeInsets.all(10.0),

                      child:
                      new InkWell(
                          child: new Row(
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child:  Image.asset(
                                  'image/dl.png',
                                  height: 25.0,
                                  width: 25.0,
                                ),
                              ),
                              Expanded(
                                flex: 8,
                                child:new Padding(
                                  padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                                  child: new Text(
                                    "Driving License",
                                    style: TextStyle(
                                        fontFamily: 'customLight',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15.0,
                                        color: Colors.white,
                                  ),
                                ),
                              ),
                              ),
                              Expanded(
                                flex: 1,
                                child:
                                Container(
                                  padding: EdgeInsets.all(5.0),
                                  decoration: BoxDecoration(
                                 //  image: Image.asset('image/arrow_circle.png'),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'image/arrow_circle.png'),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: BoxShape.circle,

                                  ),
                                  child:
                                  Image.asset(
                                    'image/right_arrow.png',
                                    height: 25.0,
                                    width: 25.0,
                                  ),                                ),
                              ),
                            ],
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        SingleUploadDocuments()));
                          }
                      )

                      ,
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