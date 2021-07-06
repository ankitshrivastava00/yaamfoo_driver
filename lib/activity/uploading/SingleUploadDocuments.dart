import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yaamfoo_driver/activity/login.dart';
import 'package:yaamfoo_driver/activity/uploading/VehicleRegistration.dart';

import 'package:yaamfoo_driver/values/ColorValues.dart';

class SingleUploadDocuments extends StatefulWidget {
  SingleUploadDocuments({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  SingleUploadDocumentssState createState() => SingleUploadDocumentssState();
}

class SingleUploadDocumentssState extends State<SingleUploadDocuments> {
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
              'id verification',
              style: new TextStyle(
                  color: ColorValues.TEXT_COLOR,
                  fontWeight: FontWeight.w600,
                  fontFamily: "customRegular",
                  fontSize: 18.0),
            ),
          ),

          body: new Container(

                child: new Stack(
                  children: [
                    Positioned(
                      child: Container(
                        height: 150.0,
                        width: MediaQuery.of(context).size.width,
                        color: ColorValues.BACKGROUND,
                      ),
                      top: 0.0,
                      left: 0.0,
                    ),
                    Positioned(
                      child: Container(
                       // margin: EdgeInsets.all(10.0),
                        height: 250.0,
                        width: MediaQuery.of(context).size.width,
                       // color: Colors.white,
                        child: Card(
                          child:
                    new Column(
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                        Container(
                       // padding: EdgeInsets.all(20.0),
                          margin: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                        child: new Image.asset('image/camera_preview.png',
                          width: 120.0,
                          height:120,
                        //  color: ColorValues.TEXT_COLOR,

                        ),

                      ),
                        new Container(
                          height: 35,

                          margin: EdgeInsets.fromLTRB(70.0,25.0, 70.0, 0.0),
                          child: new Material(
                            elevation: 5.0,
                            borderRadius: BorderRadius.circular(5.0),
                            color: ColorValues.CALL_COLOR,
                            child: MaterialButton(
                                minWidth: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                                onPressed: () {

                                },
                                child: Text(
                                  "Upload Id Card",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "customRegular",

                                  ),
                                )),
                          ),
                        ),

                      ],
                    )
                        ),
                      ),
                      top: 30.0,
                     right: 10.0,
                     left: 10.0,
                    ),
        /*  Positioned(
            child:*/
            new Container(
                    //  height: 25.0,
           //   width: MediaQuery.of(context).size.width,
margin: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 10.0),
                      child:
                      new Center(
                        child: new Text(
                          "Upload Only Jpeg, png, Pdf formats.",
                          style: TextStyle(
                            fontSize: 14.0,
                            color: ColorValues.TEXT_COLOR,
                            fontFamily: "customLight",
                            fontWeight: FontWeight.w600,

                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
         /*   top: 150.0,
            left: 15.0,
            right: 15.0,

          ),*/


                    Positioned(
                      child:                     new Container(
                        height: 40,
                     //   margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
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
                                            VechileRegistration()));

                              },
                              child: Text(
                                "Verify",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.0,
                                  fontFamily: "customRegular",
                                ),
                              )),
                        ),
                      ),

                      bottom: 30.0,
                      left: 15.0,
                      right: 15.0,

                    ),

                  ],
                ),
              ),

        )
    );
  }
}