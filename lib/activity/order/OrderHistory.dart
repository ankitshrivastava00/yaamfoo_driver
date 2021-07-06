import 'package:flutter/material.dart';
import 'package:yaamfoo_driver/activity/order/Ongoing.dart';
import 'package:yaamfoo_driver/activity/order/Pre_Order.dart';
import 'package:yaamfoo_driver/drawer/sidemenu/side_menu.dart';
import 'package:yaamfoo_driver/values/ColorValues.dart';

class OrderHistory extends StatefulWidget {
  @override
  _OrderHistoryState createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
        //  drawer: SideMenu(),
          appBar: AppBar(

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
           // brightness: Brightness.light,
            backgroundColor: Colors.white,
            title: Text('Order History',
              style: new TextStyle(
                  color: ColorValues.TEXT_COLOR,
                  fontWeight: FontWeight.w600,
                  fontFamily: "customRegular",
                  fontSize: 18.0),),
            centerTitle: true,
            bottom: TabBar(
              //indicatorPadding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                indicatorSize: TabBarIndicatorSize.label,

                labelStyle: new TextStyle(
                  color: ColorValues.TEXT_COLOR,
                  fontWeight: FontWeight.w600,
                  fontFamily: "customLight",
                  fontSize: 14.0),
              indicatorColor: ColorValues.TEXT_COLOR,
              labelColor: ColorValues.TEXT_COLOR,
              unselectedLabelColor: ColorValues.TEXT_COLOR,
              tabs: [
                Tab(text: "   Ongoing   "),
                Tab( text: "   Pre-Order   ")
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Ongoing(),
              Pre_Order(),
            ],
          ),
        ),
      ),
    );
  }
}