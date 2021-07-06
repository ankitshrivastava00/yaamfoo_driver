import 'dart:async';
import 'dart:convert' show json;
import 'dart:convert';

//import 'package:razorpay_plugin/razorpay_plugin.dart';
import 'dart:io';
import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yaamfoo_driver/Model/Dbmodel.dart';
import 'package:yaamfoo_driver/Model/ProductModel.dart';
import 'package:yaamfoo_driver/activity/maps/TrackOrder.dart';
import 'package:yaamfoo_driver/comman/CustomProgressLoader.dart';
import 'package:yaamfoo_driver/comman/PaddingWrap.dart';
import 'package:yaamfoo_driver/constant/Constant.dart';
import 'package:yaamfoo_driver/database/DBProvider.dart';
import 'package:yaamfoo_driver/values/ColorValues.dart';

class Ongoing extends StatefulWidget {
  String type = "";

  Msg _mData;
  SharedPreferences prefs;

  //MyCart(this.type, this._mData);

  static final String route = "Cart-route";

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return OngoingState();
  }
}

class OngoingState extends State<Ongoing> {
  String type = "";
  var isLoading= false;
  SharedPreferences prefs;
  List<Dbmodel> cart = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getSharedPreferences();
    // setState(() => coupan = '${widget.code}');
    // _calcTotal();
    setState(() {});
  }

  getSharedPreferences() async {
    prefs = await SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    Constant.applicationContext = context;

    if (!isLoading) {
      return Scaffold(

          body: FutureBuilder<List<Dbmodel>>(
            future: DBProvider.db.getAllClients(),
            builder:
                (BuildContext context, AsyncSnapshot<List<Dbmodel>> snapshot) {
              if (snapshot.hasData) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.48,
                        child: ListView.builder(
                          itemCount:1,
                          itemBuilder: (BuildContext context, int index) {
                            // Dbmodel item = snapshot.data[index];
                            return new GestureDetector(
                              child: Container(
                                margin: EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 2.0),
                                child:
                                new Card(
                                  elevation: 5.0,
                                  shape: RoundedRectangleBorder(

                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  margin:
                                  EdgeInsets.fromLTRB(5.0,5.0, 5.0, 5.0),
                                  child:
                                  new Column(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: <Widget>[
                                      new Container(
                                        padding: const EdgeInsets.fromLTRB(
                                            10.0, 5, 10, 0.0),
                                        //  height: 120.0,
                                        //  width: 100.0,
                                        child:
                                        new Text(
                                          'Order #1245',
                                          style: new TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12.0,
                                              color: ColorValues.TEXT_COLOR,
                                              fontFamily:
                                              "customRegular"),
                                        ),
                                      ),
                                      new Container(
                                          padding: const EdgeInsets.fromLTRB(
                                              10.0, 5, 10, 0.0),
                                          alignment: FractionalOffset(0.0, 0.5),
                                          child:
                                          new Row(children: [
                                            Expanded(
                                              flex:4,
                                              child:
                                              new Text(
                                                "Delivery Location",
                                                style: TextStyle(
                                                  fontSize: 11.0,
                                                  color: ColorValues.HINT_TEXT_COLOR,
                                                  fontFamily: "customLight",

                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                            Expanded(
                                              flex:6,
                                              child:
                                              new Text(
                                                "1901 Thornridge Cir. Shiloh, Hawaii 81063",
                                                style: TextStyle(
                                                  fontSize: 11.0,
                                                  color: ColorValues.HINT_TEXT_COLOR,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: "customLight",

                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),

                                          ],)
                                      ),
                                      new Container(
                                          padding: const EdgeInsets.fromLTRB(
                                              10.0, 5, 10, 0.0),
                                          alignment: FractionalOffset(0.0, 0.5),
                                          child:
                                          new Row(children: [
                                            Expanded(
                                              flex:4,
                                              child:
                                              new Text(
                                                "Delivery Time",
                                                style: TextStyle(
                                                  fontSize: 11.0,
                                                  color: ColorValues.HINT_TEXT_COLOR,
                                                  fontFamily: "customLight",

                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                            Expanded(
                                              flex:6,
                                              child:
                                              new Text(
                                                "26-05-2021",
                                                style: TextStyle(
                                                  fontSize: 11.0,
                                                  color: ColorValues.HINT_TEXT_COLOR,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: "customLight",

                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),

                                          ],)
                                      ),
                                      new Container(
                                          padding: const EdgeInsets.fromLTRB(
                                              10.0, 5, 10, 0.0),
                                          alignment: FractionalOffset(0.0, 0.5),
                                          child:
                                          new Row(children: [
                                            Expanded(
                                              flex:4,
                                              child:
                                              new Text(
                                                "Pickup Location",
                                                style: TextStyle(
                                                  fontSize: 11.0,
                                                  color: ColorValues.HINT_TEXT_COLOR,
                                                  fontFamily: "customLight",

                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                            Expanded(
                                              flex:6,
                                              child:
                                              new Text(
                                                "1901 Thornridge Cir. Shiloh, Hawaii 81063",
                                                style: TextStyle(
                                                  fontSize: 11.0,
                                                  color: ColorValues.HINT_TEXT_COLOR,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: "customLight",

                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),

                                          ],)
                                      ),

                                      new Container(
                                          padding: const EdgeInsets.fromLTRB(
                                              0.0, 15, 10, 10.0),
                                          alignment: FractionalOffset(0.0, 0.5),
                                          child:
                                          new Container(
                                            height: 25.0,
                                            width: 120.0,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(10.0),
                                                  bottomRight: Radius.circular(10.0)),
                                              color: ColorValues.CALL_COLOR,
                                            ),
                                            child:
                                            new Center(
                                              child: new Text(
                                                "Delivered",
                                                style: TextStyle(
                                                  fontSize: 11.0,
                                                  color: Colors.white,
                                                  fontFamily: "customLight",
                                                  fontWeight: FontWeight.w600,

                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                      ),


                                    ],
                                  ),
                                ),
                              ),
                              onTap: ()=>{

                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => TrackOrder()),
                                ),
                              },
                            );
                          },
                        ),
                      ),
                    ),

                  ],
                );
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },
          ),

      );
    } else {
      return  Scaffold(

          body: new Align(
            alignment: Alignment.center,
            child: new Center(
              child: Column(
                children: [
                  new Center(
                    child: Column(
                      children: [
                        Container(
                            margin: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
                            alignment: Alignment.center,
                            width: 250,
                            height: 250,
                            child: Image.asset("image/cup.png")),
                        new Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                          child: Text(
                            "No items in your cart",
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontFamily: "customRegular",
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  new Container(
                    child: Expanded(
                      child: Align(
                          alignment: FractionalOffset.bottomCenter,
                          child: new InkWell(
                            child: new Container(
                              height: 50.0,
                              color: Colors.transparent,
                              child: new Container(
                                  decoration: new BoxDecoration(
                                      color: ColorValues.SIGIN_TITLE_COLOR,
                                      borderRadius: new BorderRadius.only(
                                        topLeft: const Radius.circular(0.0),
                                        topRight: const Radius.circular(0.0),
                                        bottomRight: const Radius.circular(0.0),
                                        bottomLeft: const Radius.circular(0.0),
                                      )),
                                  child: new Center(
                                    child: new Text(
                                      "Shop Now",
                                      style: new TextStyle(
                                          color: Colors.white,
                                          fontFamily: "customRegular",
                                          fontSize: 18.0),
                                    ),
                                  )),
                            ),
                            onTap: () {
                              //   subtractNumbers(context);
                            },
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ),

      );
    }
  }
}
