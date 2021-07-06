import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yaamfoo_driver/Model/Dbmodel.dart';
import 'package:yaamfoo_driver/activity/order/ProductDetails.dart';
import 'package:yaamfoo_driver/activity/profilemenu/NotificationList.dart';
import 'package:yaamfoo_driver/comman/PaddingWrap.dart';
import 'package:yaamfoo_driver/database/DBProvider.dart';
import 'package:yaamfoo_driver/drawer/sidemenu/side_menu.dart';
import 'package:yaamfoo_driver/values/ColorValues.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool changecolore=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(),


      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 0.0,
              floating: false,
              pinned: true,

                backgroundColor: ColorValues.TEXT_COLOR,
                title:Text(
                  'Dashboard',
                  style: new TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontFamily: "customRegular",
                      fontSize: 16.0),
                ),
                centerTitle: true,
                leading: Builder(
                  builder: (BuildContext context) {
                    return
                      new InkWell(
                        child:Container(
                          padding: EdgeInsets.fromLTRB(15.0,15.0,15.0,15.0),
                          //  margin: EdgeInsets.fromLTRB(0.0, 80.0, 0.0, 0.0),
                          child: new Image.asset('image/drawer.png',
                          ),
                          width: 10.0,
                          height: 10.0,
                        ),
                        onTap: ()=>Scaffold.of(context).openDrawer(),
                      );
                    /* RotatedBox(
              quarterTurns: 1,
              child: IconButton(
                icon: Icon(
                  Icons.stacked_bar_chart,
                  color: Colors.black,
                ),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
            );*/
                  },
                ),
                //backgroundColor: Colors.white,
                elevation: 0.0,
                actions: [
                  PaddingWrap.paddingfromLTRB(
                      0.0,
                      0.0,
                      10.0,
                      0.0,
                      new Center(
                          child: new InkWell(
                            child: PaddingWrap.paddingfromLTRB(
                                0.0,
                                5.0,
                                0.0,
                                0.0,
                                new Stack(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.fromLTRB(3.0,3.0,3.0,3.0),
                                      //  margin: EdgeInsets.fromLTRB(0.0, 80.0, 0.0, 0.0),
                                      child: new Image.asset('image/notification.png',
                                        color: Colors.white,
                                        width: 20.0,
                                        //height: 20.0,
                                      ),
                                      width: 30.0,
                                      height: 30.0,
                                    ),
                                    new Positioned(
                                        right: 6,
                                        top: 0,
                                        child: new Stack(
                                          children: <Widget>[
                                            new Icon(Icons.brightness_1,
                                                size:10.0,
                                                color: Colors.red[800]),
                                            new Positioned(
                                                top: 0.0,
                                                left: 0.0,
                                                right:0.0,
                                                bottom:0.0,
                                                child: new Center(
                                                  child: new Text(

                                                    "2",
                                                    textAlign: TextAlign.center,
                                                    style:
                                                    new TextStyle(
                                                      color:
                                                      Colors.white,
                                                      fontWeight:
                                                      FontWeight
                                                          .w400,
                                                      fontFamily:
                                                      "customRegular",
                                                      fontSize: 5.0,
                                                    ),
                                                  ),
                                                )),
                                          ],
                                        )),
                                  ],
                                )),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                    //   builder: (context) => new DashBoardWidget()));
                                      builder: (context) =>
                                      new NotificationList()));
                            },
                          ))),
                ],
              ),



          ];
        },
        body:
        FutureBuilder<List<Dbmodel>>(
          future: DBProvider.db.getAllClients(),
          builder:
              (BuildContext context, AsyncSnapshot<List<Dbmodel>> snapshot) {
            if (snapshot.hasData) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
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
                          height: 100.0,
                          child:
                          PaddingWrap.paddingfromLTRB(
                              18.0,
                              10.0,
                              18.0, 18.0,

                              new Padding(
                                padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                                child:
                                new Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    new Container(
                                      margin: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 3.0),
                                      alignment: Alignment.centerLeft,
                                      child:
                                      Text('Hi Pratik !',

                                        style: TextStyle(
                                          color: Color(ColorValues.WHITE),
                                          fontSize: 24.0,
                                          fontWeight: FontWeight.w600,

                                          fontFamily: "customRegular",

                                        ),
                                      ),
                                    ),
                                    Row(children: <Widget>[
                                      new Container(
                                        margin: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 5.0),
                                        alignment: Alignment.centerLeft,
                                        child:
                                        Text('Welcome',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            color: Color(ColorValues.WHITE),
                                            fontSize: 15.0,
                                            fontFamily: "customLight",

                                          ),),),
                                    ],

                                    ),
                                  ],
                                ),
                              )

                          ),

                        ),




                      ],
                    ),
                  ),
                  new Container(
                      padding: const EdgeInsets.fromLTRB(
                          10.0, 15, 10, 0.0),
                      alignment: FractionalOffset(0.0, 0.5),
                      child:
                      new Row(

                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children: [
new Expanded(child:
                        new Container(
                          height: 120.0,
                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 0.0),

                          decoration: BoxDecoration(
                            color: ColorValues.TEXT_COLOR,
                            borderRadius: BorderRadius.all(
                              Radius.circular(5.0),


                            ),
                          ),
                          child:
                new Column(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: <Widget>[
new Container(
  padding: EdgeInsets.fromLTRB(10.0, 20.0, 0.0, 20.0),

  child:
                  new Text(
                    "20",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: ColorValues.BACKGROUND,
                      fontFamily: "customLight",
                      fontWeight: FontWeight.w600,

                    ),
                    textAlign: TextAlign.start,
                  ),
                  ),
                  new Container(
                    padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 20.0),

                  child:
                  new Text(
                    "Total Delivered Orders",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                      fontFamily: "customLight",
                      fontWeight: FontWeight.w600,

                    ),
                    textAlign: TextAlign.start,
                  ),
                  ),
                ])



                        ),
                        ),


                new Expanded(child:

                new Container(
                          height: 120.0,
                          margin: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
                          decoration: BoxDecoration(
                            color: ColorValues.BACKGROUND,
                            borderRadius: BorderRadius.all(
                              Radius.circular(5.0),


                            ),
                          ),
                          child:
                          new Column(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: <Widget>[
                                new Container(
                                  padding: EdgeInsets.fromLTRB(10.0, 20.0, 0.0, 20.0),

                                  child:
                                  new Text(
                                    "20",
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      color: ColorValues.TEXT_COLOR,
                                      fontFamily: "customLight",
                                      fontWeight: FontWeight.w600,

                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                                new Container(
                                  padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 20.0),

                                  child:
                                  new Text(
                                    "Total Ongoing Orders",
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      color: ColorValues.TEXT_COLOR,
                                      fontFamily: "customLight",
                                      fontWeight: FontWeight.w600,

                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                              ])
                          ),
                        ),


                      ],)
                  ),

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
                                            10.0, 15, 10, 10.0),
                                        alignment: FractionalOffset(0.0, 0.5),
                                        child:
                                        new Row(children: [

                                       new Container(
                                          height: 25.0,
                                          width: 70.0,
                                          decoration: BoxDecoration(
                                            color: ColorValues.CALL_COLOR,
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(20.0),


                                            ),
                                          ),
                                          child:
                                          new Center(
                                            child: new Text(
                                              "Accept",
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


                                                new Container(
                                                  height: 25.0,
                                                  width: 70.0,
                                                  margin: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                                                  decoration: BoxDecoration(
                                                  color: ColorValues.REJECT_COLOR,
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(20.0),


                                                  ),
                                                ),
                                                child:
                                                new Center(
                                                  child:  new Text(
                                              "Reject",
                                              style: TextStyle(
                                                fontSize: 11.0,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: "customLight",

                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                            ),
                                            ),


                                        ],)
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
  }
}