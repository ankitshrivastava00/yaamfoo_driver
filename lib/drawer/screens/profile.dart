import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:yaamfoo_driver/activity/address/AddAddress.dart';
import 'package:yaamfoo_driver/activity/order/OrderHistory.dart';
import 'package:yaamfoo_driver/activity/profilemenu/edit_profile.dart';
import 'package:yaamfoo_driver/comman/Connectivity.dart';
import 'package:yaamfoo_driver/comman/PaddingWrap.dart';
import 'package:yaamfoo_driver/drawer/sidemenu/side_menu.dart';
import 'package:yaamfoo_driver/values/ColorValues.dart';
import 'package:flutter/services.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.white
    ));
    return Scaffold(
      drawer: SideMenu(),
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return
              new InkWell(
                child:Container(
                  padding: EdgeInsets.all(20.0),
                  //  margin: EdgeInsets.fromLTRB(0.0, 80.0, 0.0, 0.0),
                  child: new Image.asset('image/back_arrow.png',
                  ),
                  width: 10.0,
                  height: 10.0,
                ),
                onTap: ()=>Scaffold.of(context).openDrawer(),
              );
          },
        ),
        elevation: 0.0,
        brightness: Brightness.light,
        backgroundColor: ColorValues.TEXT_COLOR,
        centerTitle: true,
        title: new Text(
          "Profile",
          style: new TextStyle(
              color: Color(ColorValues.WHITE),
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
                'Edit',
                style: new TextStyle(
                  fontFamily: 'customLight',
                  fontWeight: FontWeight.w600,
                  fontSize: 13.0,
                  color: ColorValues.BACKGROUND,
                ),
              ),

            ),
    onTap: ()=>{
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => EditProfile()),
    ),
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(children: [
            Container(

            decoration: BoxDecoration(

              //  color: Colors.white,
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage('image/corver.png'))),
            //  color: Color(0xff00F9FF),
            child: Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 120.0,
                  child:
                  PaddingWrap.paddingfromLTRB(
                      18.0,
                      20.0,
                      0.0,
                      0.0,
                       new Row(
                          children: <Widget>[
                            new Center(
                              child:  new Container(
                                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 40.0),
                                child: new Image.asset('image/profil_pic.png'),
                                width: 50.0,
                                height: 50.0,
                              ),
                            ),

                            new Padding(
                              padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                              child:
                              new Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  new Container(
                                    margin: EdgeInsets.fromLTRB(5.0, 5.0, 0.0, 3.0),
                                    alignment: Alignment.centerLeft,
                                    child:
                                    Text('Ankit Shrivastava',

                                      style: TextStyle(
                                        color: Color(ColorValues.WHITE),
                                        fontSize: 15.0,

                                        fontFamily: "customSemiBold",

                                      ),
                                    ),
                                  ),
                                  new Container(
                                    margin: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 5.0),
                                    alignment: Alignment.centerLeft,
                                    child:
                                    Text('ankit.shrivastav@gmail.com',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Color(ColorValues.WHITE),
                                        fontSize: 13.0,
                                        fontFamily: "customLight",

                                      ),),)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                ),
              ],
            ),
          ),

            PaddingWrap.paddingfromLTRB(
          15.0,
          15.0,
          15.0,
          15.0,
            Container(
           //   height: 220,
              width: double.maxFinite,
              child: Card(
                elevation: 5,
                child:
                PaddingWrap.paddingfromLTRB(
                    10.0,
                    10.0,
                    10.0,
                    10.0,                new Column(children: [

                  new Container(
                    alignment: FractionalOffset(0.0, 0.5),
                    child: new Text(
                      "My Account",
                      style: TextStyle(
                        fontSize: 13.0,
                        color: ColorValues.TEXT_COLOR,
                        fontFamily: "customRegular",
                        fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),

                  new Column(
                    children: [
                      new Container(
                          margin: EdgeInsets.fromLTRB(10.0, 10.0, 5.0, 0.0),
                          alignment: FractionalOffset(0.0, 0.5),
                          child:
                          new Row(children: [
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

                  new Container(
                    margin: EdgeInsets.only(top: 20.0),
                    alignment: FractionalOffset(0.0, 0.5),
                    child: new Text(
                      "Notification",
                      style: TextStyle(
                          fontSize: 13.0,
                          color: ColorValues.TEXT_COLOR,
                          fontFamily: "customRegular",
                          fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),

                  PaddingWrap.paddingfromLTRB(
                      0.0,
                      20.0,
                      0.0,
                      0.0,
                      new InkWell(
                          child: new Row(
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child:  Image.asset(
                                  'image/notification.png',
                                  height: 15.0,
                                  width: 15.0,
                                ),
                              ),
                              Expanded(
                                flex: 8,
                                child:new Padding(
                                  padding: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
                                  child: new Text(
                                    "Notification",
                                    style: TextStyle(
                                        fontFamily: 'customLight',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12.0,
                                        color: Color(ColorValues.HEADING_COLOR_EDUCATION)),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child:
                                Container(
                                  child: FlutterSwitch(
                                    width: 30.0,
                                    height: 15.0,
                                    valueFontSize: 0.0,
                                    toggleSize: 13.0,
                                    value: isSwitched,
                                    borderRadius: 30.0,
                                    activeColor: ColorValues.NOTIFICATION_BLUE,
                                    padding: 1.0,
                                    showOnOff: false,
                                    onToggle: (val) {
                                      setState(() {
                                        isSwitched = val;
                                      });
                                    },
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
                    alignment: FractionalOffset(0.0, 0.5),
                    margin: EdgeInsets.only(top: 20.0),

                    child: new Text(
                      "Other",
                      style: TextStyle(
                          fontSize: 13.0,
                          color: ColorValues.TEXT_COLOR,
                          fontFamily: "customRegular",
                          fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),

                  PaddingWrap.paddingfromLTRB(
                      0.0,
                      20.0,
                      0.0,
                      0.0,
                      new InkWell(
                          child: new Row(
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child:  Image.asset(
                                  'image/setting.png',
                                  height: 19.0,
                                  width: 19.0,
                                ),
                              ),
                              Expanded(
                                flex: 8,
                                child:new Padding(
                                  padding: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
                                  child: new Text(
                                    "Setting",
                                    style: TextStyle(
                                        fontFamily: 'customLight',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12.0,
                                        color: Color(ColorValues.HEADING_COLOR_EDUCATION)),
                                  ),
                                ),
                              ),

                            ],
                          ),
                          onTap: () {

                          }
                      )
                  ),
                  PaddingWrap.paddingfromLTRB(
                      0.0,
                      20.0,
                      0.0,
                      20.0,
                      new InkWell(
                          child: new Row(
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child:  Image.asset(
                                  'image/logout.png',
                                  height: 15.0,
                                  width: 15.0,
                                ),
                              ),
                              Expanded(
                                flex: 8,
                                child:new Padding(
                                  padding: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
                                  child: new Text(
                                    "Logout",
                                    style: TextStyle(
                                        fontFamily: 'customLight',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12.0,
                                        color: ColorValues.LOGOUT_TEXT),
                                  ),
                                ),
                              ),

                            ],
                          ),
                          onTap: () {

                          }
                      )
                  ),
                ],)
              ),
              ),

            )
        )
          ],)
        ),
      ),
    );
  }
}