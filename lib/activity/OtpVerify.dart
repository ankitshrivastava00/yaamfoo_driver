import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yaamfoo_driver/activity/CreateNewPassword.dart';
import 'package:yaamfoo_driver/values/ColorValues.dart';
class OtpVerify extends StatefulWidget {
  String otp,mobile;

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".


  @override
  OtpVerifyState createState() => OtpVerifyState();
}

class OtpVerifyState extends State<OtpVerify> {
  int _counter = 0;
  TextEditingController mobile = new TextEditingController();

  String reply;

  var onTapRecognizer;

  TextEditingController textEditingController = TextEditingController();
  // ..text = "123456";

  StreamController<ErrorAnimationType> errorController;


  bool hasError = false;
  String currentText = "";
  @override
  void initState() {
    onTapRecognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.pop(context);
      };
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  @override
  void dispose() {
    errorController.close();

    super.dispose();
  }
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
                  padding:EdgeInsets.all(10.0),

                  margin: EdgeInsets.fromLTRB(0.0, 80.0, 0.0, 0.0),
                  child: new Image.asset('image/otp.png'),
                  width: 120.0,
                  height: 120.0,
                ),

                new Container(
                  margin: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 10.0),
                  child: new Text("OTP Verification", style: TextStyle(
                    fontSize: 19.0,
                    color: ColorValues.TEXT_COLOR,
                    fontFamily: "customLight",
                    fontWeight: FontWeight.bold
                  ),
                    textAlign: TextAlign.center,
                  ),
                ),
                new Container(
                  margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                  child: new Text("Enter OTP Code send to", style: TextStyle(
                    fontSize: 14.0,
                    color: ColorValues.TEXT_COLOR,
                    fontFamily: "customLight",

                  ),
                    textAlign: TextAlign.center,
                  ),
                ),
                new Container(
                  margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                  child: new Text("+91 9713172282", style: TextStyle(
                    fontSize: 14.0,
                    color: ColorValues.TEXT_COLOR,
                    fontFamily: "customLight",
                  ),
                    textAlign: TextAlign.center,
                  ),
                ),
          Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 30.0, horizontal: 30),
              child: PinCodeTextField(
                appContext: context,
                pastedTextStyle: TextStyle(
                  color: Colors.white,
                  fontFamily: "customLight",
                ),
                length: 6,
                obscureText: false,
                obscuringCharacter: '*',
               // animationType: AnimationType.fade,
                validator: (v) {
                 /* if (v.length < 3) {
                    return "I'm from validator";
                  } else {
                    return null;
                  }*/
                },
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5),
                  fieldHeight: 40,
                  fieldWidth: 40,
                  inactiveFillColor: Colors.white,
                  borderWidth: 0.0,
                 // disabledColor: Colors.white,
                 // inactiveColor: Colors.white,
                  activeFillColor:
                  hasError ? Colors.white : Colors.white,
                ),
                cursorColor: Colors.black,
                animationDuration: Duration(milliseconds: 300),
                textStyle: TextStyle(fontSize: 12, height: 1.6,
                  fontFamily: "customLight",

                ),
                backgroundColor: Color(0xff00F9FF),
                enableActiveFill: true,
                errorAnimationController: errorController,
                controller: textEditingController,
                keyboardType: TextInputType.number,
                boxShadows: [
                  BoxShadow(
                    offset: Offset(0, 1),
                    color: Colors.black12,
                    blurRadius: 10,
                  )
                ],
                onCompleted: (v) {
                  print("Completed");
                },
                // onTap: () {
                //   print("Pressed");
                // },
                onChanged: (value) {
                  print(value);
                  setState(() {
                    currentText = value;
                  });
                },
                beforeTextPaste: (text) {
                  print("Allowing to paste $text");
                  //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                  //but you can show anything you want here, like your pop up saying wrong paste format or etc
                  return true;
                },
              )),

        new Container(
                  margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
                  child: new Text("Don’t Receive OTP Code?", style: TextStyle(
                    fontSize: 14.0,
                    color: ColorValues.TEXT_COLOR,
                    fontFamily: "customLight",
                  ),
                    textAlign: TextAlign.center,
                  ),
                ),
                new Container(
                  margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1.0, color: ColorValues.TEXT_COLOR,),
                    ),),
                  child: new Text("Resend code", style: TextStyle(
                    fontSize: 14.0,
                    color: ColorValues.TEXT_COLOR,
                    fontFamily: "customLight",
                    fontWeight: FontWeight.bold

                  ),
                    textAlign: TextAlign.center,
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
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      CreateNewPassword()));
                        },
                        child: Text(
                          "Verify",
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