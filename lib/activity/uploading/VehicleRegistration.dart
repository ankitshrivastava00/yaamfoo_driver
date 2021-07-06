import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yaamfoo_driver/activity/login.dart';
import 'package:yaamfoo_driver/comman/PaddingWrap.dart';
import 'package:yaamfoo_driver/drawer/tabs/tabspage.dart';

import 'package:yaamfoo_driver/values/ColorValues.dart';

class VechileRegistration extends StatefulWidget {
  VechileRegistration({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  VechileRegistrationState createState() => VechileRegistrationState();
}

class VechileRegistrationState extends State<VechileRegistration> {
  int _counter = 0;
  bool obscureText = true, passwordVisible = false;

  TextEditingController em = new TextEditingController();
  TextEditingController pass = new TextEditingController();
  String reply="";



  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      // onWillPop: _onWillPop,
        child:
        new Scaffold(
          backgroundColor: Color(0xff00F9FF),

          appBar:
          new AppBar(
            elevation: 0.0,
            leading: new InkWell(
              child:Container(
                padding: EdgeInsets.all(20.0),
                //  margin: EdgeInsets.fromLTRB(0.0, 80.0, 0.0, 0.0),
                child: new Image.asset('image/back_arrow.png',
                  width: 10.0,
                  height:10,
                  color: ColorValues.TEXT_COLOR,

                ),

              ),
              onTap: () {
                /* if (widget.type == "home") {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new DashBoardWidget()));
                } else if (widget.type == "homeviewall") {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new HomeViewAll()));
                } else if (widget.type == "product") {
                  Navigator.pushReplacement(
                      context,
                      new MaterialPageRoute(
                        //   builder: (context) => new DashBoardWidget()));
                          builder: (context) => new ProductDetailPage(
                              widget._mData, "backfromcart")));
                } else {*/
                Navigator.pop(context);
                //  }
              },
            ),
            brightness: Brightness.light,
            backgroundColor: ColorValues.BACKGROUND,
            centerTitle: true,
            title: Text(
              'Vechicle Registration',
              style: new TextStyle(
                  color: ColorValues.TEXT_COLOR,
                  fontWeight: FontWeight.w600,
                  fontFamily: "customRegular",
                  fontSize: 18.0),
            ),
          ),

          body: SingleChildScrollView(
            child: Center(
              child: Container(
                //  color: Color(0xff00F9FF),
                child: Column(
                  children: <Widget>[


                    new Container(
                      margin: EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0),
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
                    //  height: 45.0,
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
                              //  fillColor: Colors.white, filled: true,
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                  color: ColorValues.HINT_TEXT_COLOR,
                                  fontSize: 15.0,
                                  fontFamily: "customLight",

                                ),

                                hintText: "Enter Here",



                              ),
                            ),

                          ))

                      ,
                    ),




                    new Container(
                      margin: EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 0.0),
                      alignment: FractionalOffset(0.0, 0.5),
                      child: new Text(
                        "Vehicle Name",
                        style: TextStyle(
                          fontSize: 13.0,
                          color: ColorValues.TEXT_COLOR,
                          fontFamily: "customLight",
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    new Container(
                    //  height: 45.0,
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
                              //  fillColor: Colors.white, filled: true,
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                  color: ColorValues.HINT_TEXT_COLOR,
                                  fontSize: 15.0,
                                  fontFamily: "customLight",

                                ),

                                hintText: "Enter Here",


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
                        "Vehicle Number",
                        style: TextStyle(
                          fontSize: 13.0,
                          color: ColorValues.TEXT_COLOR,
                          fontFamily: "customLight",
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    new Container(
                    //  height: 45.0,
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
                              style: TextStyle(
                                color: ColorValues.TEXT_COLOR,
                                fontSize: 15.0,
                                fontFamily: "customLight",

                              ),
                              maxLines: 1,
                              decoration: InputDecoration(
                             //   fillColor: Colors.white, filled: true,
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                  color: ColorValues.HINT_TEXT_COLOR,
                                  fontSize: 15.0,
                                  fontFamily: "customLight",

                                ),
                                hintText: "Enter Here",



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
                        "RC Number",
                        style: TextStyle(
                          fontSize: 13.0,
                          color: ColorValues.TEXT_COLOR,
                          fontFamily: "customLight",
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    new Container(
                    //  height: 45.0,
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
                            //    fillColor: Colors.white, filled: true,
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                  color: ColorValues.HINT_TEXT_COLOR,
                                  fontSize: 15.0,
                                  fontFamily: "customLight",

                                ),
                                hintText: "Enter Here",


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
                      margin: EdgeInsets.fromLTRB(20.0, 100.0, 20.0, 20.0),
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
                              "Register",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
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
        )
    );
  }
}