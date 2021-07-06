import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yaamfoo_driver/activity/login.dart';
import 'package:yaamfoo_driver/comman/PaddingWrap.dart';

import 'package:yaamfoo_driver/values/ColorValues.dart';

class AddAddress extends StatefulWidget {
  AddAddress({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  AddAddressState createState() => AddAddressState();
}

class AddAddressState extends State<AddAddress> {
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
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Text(
              'Address',
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
                      //  height: 45.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(0),

                      ),
                      margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                      child:
                      new Center(
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
                                icon:
                                new Container(
                                 // padding: EdgeInsets.all(11.0),
                                  child: new Image.asset('image/search_icon.png'),
                                  width: 20.0,
                                  height: 20.0,
                                ),
                                //  fillColor: Colors.white, filled: true,
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                  color: ColorValues.HINT_TEXT_COLOR,
                                  fontSize: 15.0,
                                  fontFamily: "customLight",

                                ),

                                hintText: "Search.....",


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

                    PaddingWrap.paddingfromLTRB(
                        20.0,
                        20.0,
                        0.0,
                        0.0,
                        new InkWell(
                            child:
                            new Row(
                              children: <Widget>[
                                Expanded(
                                  flex: 0,
                                  child:  Image.asset(
                                    'image/shape.png',
                                    height: 15.0,
                                    width: 15.0,
                                    color: ColorValues.LOGOUT_TEXT,
                                  ),
                                ),
                                Expanded(
                                  flex: 0,
                                  child:new Padding(
                                    padding: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
                                    child: new Text(
                                      "Use Current Location",
                                      style: TextStyle(
                                          fontFamily: 'customRegular',
                                          fontWeight: FontWeight.normal,
                                          fontSize: 12.0,
                                        color: ColorValues.LOGOUT_TEXT,
                                      ),
                                    ),
                                  ),
                                ),

                              ],
                            ),
                            onTap: () {
                            }
                        )
                    ),

                    new Container(
                      margin: EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0),
                      alignment: FractionalOffset(0.0, 0.5),
                      child: new Text(
                        "Street",
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

                                hintText: "Street",



                              ),
                            ),

                          ))

                      ,
                    ),




                    new Container(
                      margin: EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 0.0),
                      alignment: FractionalOffset(0.0, 0.5),
                      child: new Text(
                        "House Name",
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

                                hintText: "House Name",


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
                        "Landmark",
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
                                hintText: "Landmark",



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
                                hintText: "Indore",


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
                        "Pincode",
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
                                //fillColor: Colors.white, filled: true,
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                  color: ColorValues.HINT_TEXT_COLOR,
                                  fontSize: 15.0,
                                  fontFamily: "customLight",

                                ),
                                hintText: "452001",


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
                      margin: EdgeInsets.fromLTRB(50.0, 50.0, 50.0, 20.0),
                      child: new Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(50.0),
                        color: ColorValues.TEXT_COLOR,
                        child: MaterialButton(
                            minWidth: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.fromLTRB(2.0, 2.0, 2.0, 2.0),
                            onPressed: () {
                            },
                            child: Text(
                              "Save",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: ColorValues.BACKGROUND,
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