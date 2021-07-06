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

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool isSwitched = false;
  bool isSwitchedStatus = false;

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
                    color: ColorValues.TEXT_COLOR,
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
        backgroundColor: Colors.white,
        centerTitle: true,
        title: new Text(
          "Setting",
          style: new TextStyle(
              color: ColorValues.TEXT_COLOR,
              fontWeight: FontWeight.w600,
              fontFamily: "customRegular",
              fontSize: 18.0),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Column(children: [
              PaddingWrap.paddingfromLTRB(
                  10.0,
                  20.0,
                  10.0,
                  0.0,
                  new InkWell(
                      child: new Row(
                        children: <Widget>[

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
              PaddingWrap.paddingfromLTRB(
                  10.0,
                  20.0,
                  10.0,
                  0.0,
                  new InkWell(
                      child: new Row(
                        children: <Widget>[

                          Expanded(
                            flex: 8,
                            child:new Padding(
                              padding: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
                              child: new Text(
                                "Active Status",
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
                                value: isSwitchedStatus,
                                borderRadius: 30.0,
                                activeColor: ColorValues.NOTIFICATION_BLUE,
                                padding: 1.0,
                                showOnOff: false,
                                onToggle: (val) {
                                  setState(() {
                                    isSwitchedStatus = val;
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

            ],)
        ),
      ),
    );
  }
}