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
import 'package:yaamfoo_driver/activity/ThankYou.dart';
import 'package:yaamfoo_driver/comman/CustomProgressLoader.dart';
import 'package:yaamfoo_driver/comman/PaddingWrap.dart';
import 'package:yaamfoo_driver/constant/Constant.dart';
import 'package:yaamfoo_driver/database/DBProvider.dart';
import 'package:yaamfoo_driver/values/ColorValues.dart';

class Favorite extends StatefulWidget {
  String type = "";

  Msg _mData;
  SharedPreferences prefs;

  //MyCart(this.type, this._mData);

  static final String route = "Cart-route";

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FavoriteState();
  }
}

class FavoriteState extends State<Favorite> {
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
      return WillPopScope(
        onWillPop: () {
          /*  if (widget.type == "home") {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new DashBoardWidget()));
          } else if (widget.type == "homeviewall") {
            Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new HomeViewAll()));
          } else if (widget.type == "product") {
            Navigator.pushReplacement(
                context,
                new MaterialPageRoute(
                    builder: (context) =>
                    new ProductDetailPage(widget._mData, "backfromcart")));
          } else {*/
          Navigator.pop(context);
          //  }
        },
        child: Scaffold(
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
              'Favorite',
              style: new TextStyle(
                  color: ColorValues.TEXT_COLOR,
                  fontWeight: FontWeight.w600,
                  fontFamily: "customRegular",
                  fontSize: 18.0),
            ),
          ),
          body:



          FutureBuilder<List<Dbmodel>>(
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
                          itemCount:6,
                          itemBuilder: (BuildContext context, int index) {
                            // Dbmodel item = snapshot.data[index];
                            return new GestureDetector(
                              child: Container(
                                margin: EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 2.0),
                                child: new Card(
                                  elevation: 5.0,
                                  shape: RoundedRectangleBorder(

                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  margin:
                                  EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
                                  child:
                                  new Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      new Expanded(
                                        child: new Container(
                                            height: 100.0,
                                            width: 100.0,

                                            // color: Colors.transparent,
                                            decoration: BoxDecoration(

                                              //  color: Colors.white,
                                                image: DecorationImage(
                                                    fit: BoxFit.fill, image: AssetImage('image/fav_back.png'))),
                                            child: ClipRRect(
                                              borderRadius:
                                              BorderRadius.circular(0.0),
                                              child:
                                              Image.asset(
                                                'image/burger.png',
                                                height: 70.0,
                                                width: 70.0,
                                              ),
                                              /*new CachedNetworkImage(

                                                imageUrl:"https://toppng.com/uploads/preview/burger-11528340630dx5paxa77f.png"
                                                *//*profileInfoModal != null
                          ?*//*
                                               *//* Constant.CONSTANT_IMAGE_PATH +
                                                    item.defaultImage*//*
                                                *//*: ""*//*,
                                                fit: BoxFit.cover,

                                              ),*/
                                            )),
                                        flex: 0,
                                      ),
                                      new Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              10.0, 0, 0, 0),
                                          child:  new Container(
                                            margin: const EdgeInsets.fromLTRB(
                                                0.0, 0, 0, 5.0),
                                          //  height: 120.0,
                                          //  width: 100.0,
                                            child:new Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                             // mainAxisAlignment: MainAxisAlignment.spaceAround,

                                              // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              PaddingWrap.paddingfromLTRB(
                                                  0.0,
                                                  10.0,
                                                  0.0,
                                                  5.0,
                                                  new InkWell(
                                                      child: new Row(
                                                        children: <Widget>[
                                                          Expanded(
                                                            flex: 0,
                                                            child:  Image.asset(
                                                              'image/start.png',
                                                              height: 8.0,
                                                              width: 8.0,
                                                            ),
                                                          ),
                                                          Expanded(
                                                            flex: 8,
                                                            child:new Padding(
                                                              padding: EdgeInsets.fromLTRB(2.0, 0.0, 0.0, 0.0),
                                                              child: new Text(
                                                                "4.9 (105)",
                                                                style: TextStyle(
                                                                    fontFamily: 'customLight',
                                                                    fontWeight: FontWeight.w600,
                                                                    fontSize: 8.0,
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
                                              new Container(
                                                margin: const EdgeInsets.fromLTRB(
                                                    0.0, 0, 0, 5.0),
                                                //  height: 120.0,
                                                //  width: 100.0,
                                                child:
                                              new Text(
                                                'Veggie Burgers',
                                                style: new TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                    fontSize: 13.0,
                                                    color: ColorValues.TEXT_COLOR,
                                                    fontFamily:
                                                    "customRegular"),
                                              ),
                                              ),
                                          new Container(
                                            margin: const EdgeInsets.fromLTRB(
                                                0.0, 0, 0, 5.0),
                                            //  height: 120.0,
                                            //  width: 100.0,
                                            child:
                                              new Text("spicy and crispy with garlic"
                                                /*item.weight
                                                    .replaceAll(".00", "") +
                                                    " " +
                                                    item.unit*/,
                                                style: new TextStyle(
                                                    fontSize: 11.0,
                                                    color: ColorValues.TEXT_COLOR,

                                                    fontFamily:
                                                    "customRegular"),
                                              ),
                                              ),
                                        new Container(
                                            margin: const EdgeInsets.fromLTRB(
                                                0.0, 0, 0, 0.0),
                                            //  height: 120.0,
                                            //  width: 100.0,
                                            child:
                                              Padding(
                                                padding:
                                                const EdgeInsets.fromLTRB(
                                                    0.0, 8, 0, 0),
                                                child: new Row(
                                                  children: [
                                                    new Text(
                                                        "\$ 15.00",
                                                        style: new TextStyle(
                                                            fontSize: 13.0,
                                                            color: ColorValues.TEXT_COLOR,
                                                            fontFamily:
                                                            "customBold")),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .fromLTRB(
                                                          10.0, 0, 0, 0),
                                                      child: new Stack(
                                                        children: [
                                                          new Text(
                                                              "",
                                                              style: new TextStyle(
                                                                  decorationColor:
                                                                  Colors
                                                                      .black,
                                                                  decorationStyle:
                                                                  TextDecorationStyle
                                                                      .solid,
                                                                  decoration:
                                                                  TextDecoration
                                                                      .lineThrough,
                                                                  decorationThickness:
                                                                  3.0,
                                                                  fontSize:
                                                                  14.0,
                                                                  color: Colors
                                                                      .black,
                                                                  fontFamily:
                                                                  "muktaRegular")),
                                                          /*Center(
                                                                            child:
                                                                                Padding(
                                                                          padding: const EdgeInsets.fromLTRB(
                                                                              0.0,
                                                                              10,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              new Container(
                                                                            height:
                                                                                1.0,
                                                                            width:
                                                                                50.0,
                                                                            color:
                                                                                Colors.black,
                                                                          ),
                                                                        ),
                                                                        ),*/
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
                                        ),
                                        flex: 1,
                                      ),
                                      new Expanded(
                                        child:new Container(
                                          height: 100.0,
                                         // width: 100.0,
                                          child:
                                        new Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding:
                                              const EdgeInsets.fromLTRB(
                                                  5.0, 10.0, 10.0, 0),
                                              child: new Image.asset(
                                                "image/heart.png",
                                                width: 15.0,
                                                height: 15.0,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                              const EdgeInsets.fromLTRB(
                                                  10.0, 10, 5, 10),
                                              child: new Row(
                                                children: [

                                                  new InkWell(
                                                    child: Padding(
                                                      padding:
                                                      const EdgeInsets
                                                          .all(5.0),
                                                      child: new Image.asset(
                                                        "image/plus.png",
                                                        width: 15.0,
                                                        height: 15.0,
                                                      ),
                                                    ),
                                                    /*onTap: () {
                                                        double dis = double
                                                            .parse(item
                                                            .price) -
                                                            double.parse(item
                                                                .offerprice);
                                                        DBProvider.db
                                                            .IncrementClient(
                                                            item.product_id,
                                                            item.price,
                                                            item.total,
                                                            item.cartquantity,
                                                            item.discount,
                                                            dis.toString());
                                                        _calcTotal();

                                                        setState(() {});

                                                      }*/),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                        ),
                                        flex: 0,
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                              onTap: () {

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
        ),
      );
    } else {
      return WillPopScope(
        onWillPop: () {
          //CustomProgressLoader.showDialogBackDialog(context);
          /*     if (widget.type == "home") {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new DashBoardWidget()));
          } else if (widget.type == "homeviewall") {
            Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new HomeViewAll()));
          } else if (widget.type == "product") {

            Navigator.pushReplacement(
                context,
                new MaterialPageRoute(
                  //   builder: (context) => new DashBoardWidget()));
                    builder: (context) =>
                    new ProductDetailPage(widget._mData, "backfromcart")));
          } else {*/
          Navigator.pop(context);
          //   }
        },
        child: Scaffold(
          appBar:
          new AppBar(
            elevation: 0.0,
            leading: new InkWell(
              child:Container(
                // padding: EdgeInsets.all(20.0),
                //  margin: EdgeInsets.fromLTRB(0.0, 80.0, 0.0, 0.0),
                child: new Image.asset('image/back_arrow.png',
                  width: 15.0,
                  height:15.0,
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
            backgroundColor: ColorValues.SIGIN_TITLE_COLOR,
            centerTitle: true,
            title: Text(
              'Favorite',
              style: new TextStyle(
                  color: ColorValues.TEXT_COLOR,
                  fontWeight: FontWeight.w600,
                  fontFamily: "customRegular",
                  fontSize: 18.0),
            ),
          ),
          backgroundColor: Colors.white,
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
        ),
      );
    }
  }
}
