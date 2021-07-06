import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:yaamfoo_driver/activity/ThankYou.dart';
import 'package:yaamfoo_driver/comman/PaddingWrap.dart';
import 'package:yaamfoo_driver/values/ColorValues.dart';

class TrackOrder extends StatefulWidget {
  @override
  State<TrackOrder> createState() => TrackOrderState();
}

class TrackOrderState extends State<TrackOrder> {
  LatLng _initialcameraposition = LatLng(20.5937, 78.9629);
  GoogleMapController _controller;
  Location _location = Location();

  void _onMapCreated(GoogleMapController _cntlr)
  {
    _controller = _cntlr;
    _location.onLocationChanged.listen((l) {
      _controller.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(target: LatLng(l.latitude, l.longitude),zoom: 15),
        ),
      );
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                },              );
          },
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: new Text(
          "Track Order",
          style: new TextStyle(
              color: ColorValues.TEXT_COLOR,
              fontWeight: FontWeight.w600,
              fontFamily: "customRegular",
              fontSize: 18.0),
        ),
      ),

      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            GoogleMap(
              myLocationButtonEnabled: false,
              zoomGesturesEnabled: true,
              zoomControlsEnabled: false,
          //    polylines: Set<Polyline>.of(),




              initialCameraPosition: CameraPosition(target: _initialcameraposition,zoom: 1.0 ),
              mapType: MapType.normal,
              onMapCreated: _onMapCreated,
              myLocationEnabled: true,
            ),
            SafeArea(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB( 10.0,0.0,10.0,30.0),
                  child:
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    width: double.maxFinite,
                    child: Padding(
                      padding: const EdgeInsets.all( 10.0),
                      child:

                      new Container(
                        height: 170,

                        child:

                        new InkWell(
                          child:

                        new Card(
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(

                            borderRadius: BorderRadius.circular(10),
                          ),
                          child:

                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 3.0),
                            alignment: Alignment.centerLeft,
                            child:
                            Text('Delivery Address',

                              style: TextStyle(
                                color:ColorValues.TEXT_COLOR,
                                fontWeight: FontWeight.w600,
                                fontFamily: "customRegular",
                                fontSize: 15.0,
                              ),
                            ),
                          ),
                          PaddingWrap.paddingfromLTRB(
                              0.0,
                              10.0,
                              0.0,
                              0.0,
                              new InkWell(
                                  child: new Row(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 1,
                                        child:  Image.asset(
                                          'image/shape.png',
                                          height: 15.0,
                                          width: 15.0,
                                          color: ColorValues.TEXT_COLOR,
                                        ),
                                      ),
                                      Expanded(
                                        flex: 9,
                                        child:new Padding(
                                          padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                                          child: new Text(
                                            "4140 Parker Rd. Allentown, New Mexico 31134",
                                            style: TextStyle(
                                                fontFamily: 'customLight',
                                                fontWeight: FontWeight.w600,
                                                fontSize: 13.0,
                                                color: ColorValues.TEXT_COLOR),
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),

                              )
                          ),

                          PaddingWrap.paddingfromLTRB(
                              20.0,
                              20.0,
                              0.0,
                              0.0,
                              new InkWell(
                                child: new Row(
                                  children: <Widget>[

Expanded(
  flex: 0,
  child:                       Container(

    margin: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
    height: 30.0,

width: 60.0,
    child:   Container(

        margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
        height: 20.0,
        alignment: Alignment.center,
      decoration: BoxDecoration(
        color: ColorValues.CALL_COLOR,
        borderRadius: BorderRadius.all(
            Radius.circular(20.0),


        ),
      ),

        child: Text('Call',
          textAlign: TextAlign.center,
          style: TextStyle(

            color:Colors.white,
            fontFamily: "customLight",
            fontSize: 13.0,
          ),

      ),
    ),
  ),

)
                                  ],
                                ),

                              )
                          ),


                        ],
                      ),
                      ),
                          onTap: ()=>{
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ThankYou()),)
                          },
                      ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }


}

