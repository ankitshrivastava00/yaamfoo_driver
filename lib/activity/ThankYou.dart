import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yaamfoo_driver/drawer/sidemenu/side_menu.dart';
import 'package:yaamfoo_driver/values/ColorValues.dart';

class ThankYou extends StatefulWidget {
  @override
  _ThankYouState createState() => _ThankYouState();
}

class _ThankYouState extends State<ThankYou> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Align(
        alignment: Alignment.center,
        child: new SingleChildScrollView(child: new Center(
          child: Column(
            children: [
              new Center(
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.fromLTRB(0.0, 70.0, 0.0, 0.0),
                        alignment: Alignment.center,
                        width: 200,
                        height: 200,
                        child: Image.asset("image/congratulation.png")),
                    new Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                      child: Text(
                        "Congratulation Order Completed",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: ColorValues.TEXT_COLOR,
                          fontFamily: "customRegular",
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),  new Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.fromLTRB(25.0, 20.0, 25.0, 0.0),
                      child: Text(
                        "You Have Completed ORD 1212545",
                        textAlign: TextAlign.center,
                        style: TextStyle(

                          fontSize: 15.0,
                          color: ColorValues.TEXT_COLOR,
                          fontFamily: "customLight",
                          fontWeight: FontWeight.normal,
                        ),
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
    );
  }
}