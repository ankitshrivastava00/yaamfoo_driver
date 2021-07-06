import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yaamfoo_driver/activity/login.dart';
import 'package:yaamfoo_driver/comman/PaddingWrap.dart';
import 'package:yaamfoo_driver/values/ColorValues.dart';

class EditProfile extends StatefulWidget {
  EditProfile({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  EditProfileState createState() => EditProfileState();
}

class EditProfileState extends State<EditProfile> {
  int _counter = 0;
  bool obscureText = true, passwordVisible = false;

  TextEditingController em = new TextEditingController();
  TextEditingController pass = new TextEditingController();
  String reply="";




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
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Text(
              '',
              style: new TextStyle(
                  color: ColorValues.TEXT_COLOR,
                  fontWeight: FontWeight.w600,
                  fontFamily: "customRegular",
                  fontSize: 18.0),
            ),
            actions: [
              new InkWell(
                child:Container(
                  padding: EdgeInsets.all(20.0),
                  //  margin: EdgeInsets.fromLTRB(0.0, 80.0, 0.0, 0.0),
                  child: Text(
                    'Save',
                    style: new TextStyle(
                        color: ColorValues.TEXT_COLOR,
                        fontWeight: FontWeight.w600,
                        fontFamily: "customRegular",
                        fontSize: 13.0),
                  ),

                ),
                onTap: () {

                },
              ),
            ],
          ),

          body: SingleChildScrollView(
            child: Center(
              child:Container(
                //  color: Color(0xff00F9FF),
                child: Column(
                  children: <Widget>[
                    new Container(
                      margin: EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 0.0),
                      child: new Image.asset('image/profil_pic.png'),
                width: 50.0,
                height: 50.0,
              
                      //    heig ht: 80.0,
                    ),

              PaddingWrap.paddingfromLTRB(
                15.0,
                50.0,
                15.0,
                15.0,              new Card(
                child:
                  new Column(
                    children: [
                    new Container(
                        margin: EdgeInsets.fromLTRB(10.0, 10.0, 5.0, 0.0),
                      alignment: FractionalOffset(0.0, 0.5),
                      child: new Row(children: [
                        new Container(
                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                          child: new Image.asset('image/user1.png'),
                          width: 15.0,
                          height: 15.0,

                          //    heig ht: 80.0,
                        ),
                        new Text(
                          "Name",
                          style: TextStyle(
                            fontSize: 13.0,
                            color: ColorValues.HINT_TEXT_COLOR,
                            fontFamily: "customRegular",

                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],)
                    ),
                    new Container(
                     // height: 40.0,

                      margin: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
                      child:                       new Expanded(
                          child: Container(
                            padding: EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
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



                              ),
                            ),
                            decoration: new BoxDecoration(

                                border: new Border(

                                    bottom: new BorderSide(
                                        color: ColorValues.HINT_TEXT_COLOR,
                                        ))),
                          ))

                      ,
                    ),

                      new Container(
                          margin: EdgeInsets.fromLTRB(10.0, 10.0, 5.0, 0.0),
                          alignment: FractionalOffset(0.0, 0.5),
                          child: new Row(children: [
                            new Container(
                              margin: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                              child: new Image.asset('image/phone.png'),
                              width: 15.0,
                              height: 15.0,

                              //    heig ht: 80.0,
                            ),
                            new Text(
                              "Phone",
                              style: TextStyle(
                                fontSize: 13.0,
                                color: ColorValues.HINT_TEXT_COLOR,
                                fontFamily: "customRegular",

                              ),
                              textAlign: TextAlign.left,
                            ),
                          ],)
                      ),
                      new Container(
                        // height: 40.0,

                        margin: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
                        child:                       new Expanded(
                            child: Container(
                              padding: EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
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

                                  hintText: "9817283123",



                                ),
                              ),
                              decoration: new BoxDecoration(

                                  border: new Border(

                                      bottom: new BorderSide(
                                        color: ColorValues.HINT_TEXT_COLOR,
                                      ))),
                            ))

                        ,
                      ),

                      new Container(
                          margin: EdgeInsets.fromLTRB(10.0, 10.0, 5.0, 0.0),
                          alignment: FractionalOffset(0.0, 0.5),
                          child: new Row(children: [
                            new Container(
                              margin: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                              child: new Image.asset('image/email.png'),
                              width: 15.0,
                              height: 15.0,

                              //    heig ht: 80.0,
                            ),
                            new Text(
                              "Email",
                              style: TextStyle(
                                fontSize: 13.0,
                                color: ColorValues.HINT_TEXT_COLOR,
                                fontFamily: "customRegular",

                              ),
                              textAlign: TextAlign.left,
                            ),
                          ],)
                      ),
                      new Container(
                        // height: 40.0,

                        margin: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
                        child:                       new Expanded(
                            child: Container(
                              padding: EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
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

                                  hintText: "jhon@gmail.com",



                                ),
                              ),
                              decoration: new BoxDecoration(

                                  border: new Border(

                                      bottom: new BorderSide(
                                        color: ColorValues.HINT_TEXT_COLOR,
                                      ))),
                            ))

                        ,
                      ),


                      new Container(
                          margin: EdgeInsets.fromLTRB(10.0, 10.0, 5.0, 0.0),
                          alignment: FractionalOffset(0.0, 0.5),
                          child: new Row(children: [
                            new Container(
                              margin: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                              child: new Image.asset('image/bike.png'),
                              width: 15.0,
                              height: 15.0,

                              //    heig ht: 80.0,
                            ),
                            new Text(
                              "Vehicle Number",
                              style: TextStyle(
                                fontSize: 13.0,
                                color: ColorValues.HINT_TEXT_COLOR,
                                fontFamily: "customRegular",

                              ),
                              textAlign: TextAlign.left,
                            ),
                          ],)
                      ),
                      new Container(
                        // height: 40.0,

                        margin: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
                        child:                       new Expanded(
                            child: Container(
                              padding: EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
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

                                  hintText: "GJ21-2484",



                                ),
                              ),
                              decoration: new BoxDecoration(

                                  border: new Border(

                                      bottom: new BorderSide(
                                        color: ColorValues.HINT_TEXT_COLOR,
                                      ))),
                            ))

                        ,
                      ),
                      new Container(
                          margin: EdgeInsets.fromLTRB(10.0, 10.0, 5.0, 0.0),
                          alignment: FractionalOffset(0.0, 0.5),
                          child: new Row(children: [
                            new Container(
                              margin: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                              child: new Image.asset('image/lock_on.png'),
                              width: 15.0,
                              height: 15.0,

                              //    heig ht: 80.0,
                            ),
                            new Text(
                              "Password",
                              style: TextStyle(
                                fontSize: 13.0,
                                color: ColorValues.HINT_TEXT_COLOR,
                                fontFamily: "customRegular",

                              ),
                              textAlign: TextAlign.left,
                            ),
                          ],)
                      ),
                      new Container(
                        // height: 40.0,

                        margin: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
                        child:                       new Expanded(
                            child: Container(
                              padding: EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
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

                                  hintText: "1234567",



                                ),
                              ),
                              decoration: new BoxDecoration(

                                  border: new Border(

                                      bottom: new BorderSide(
                                        color: ColorValues.HINT_TEXT_COLOR,
                                      ))),
                            ))

                        ,
                      ),


                    ],
                  ),
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