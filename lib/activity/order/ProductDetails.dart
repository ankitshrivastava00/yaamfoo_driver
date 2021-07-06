import 'package:flutter/material.dart';
import 'package:yaamfoo_driver/Model/Dbmodel.dart';
import 'package:yaamfoo_driver/comman/PaddingWrap.dart';
import 'package:yaamfoo_driver/database/DBProvider.dart';
import 'package:yaamfoo_driver/values/ColorValues.dart';

class ProductDetails extends StatefulWidget {
  @override
  ProductDetailsState createState() => ProductDetailsState();
}

class ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("Burger King",
                      style: TextStyle(
                        color:Colors.white,
                        fontFamily: "customRegular",
                        fontSize: 16.0,
                      ),
                  ),
                  background: Image.asset(
                    "image/full_burger.png",
                    fit: BoxFit.cover,
                  )),
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
                    margin: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 3.0),
                    alignment: Alignment.centerLeft,
                    child:
                    Text('Menu',

                      style: TextStyle(
                        color:ColorValues.TEXT_COLOR,
                        fontWeight: FontWeight.w600,
                        fontFamily: "customRegular",
                        fontSize: 15.0,
                      ),
                    ),
                  ),

                  new Container(
                    height: 40.0,
                    margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
                    child:
                  ListView(

                    // This next line does the trick.
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(

                        margin: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                        width: 100.0,
                        height: 40.0,


                        child: Card(

                          elevation: 5.0,
                            color:ColorValues.TEXT_COLOR,
                          shape: RoundedRectangleBorder(

                            borderRadius: BorderRadius.circular(2),
                          ),
                          child:  Container(

                margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                width: 100.0,
                height: 40.0,
                            alignment: Alignment.center,


                child: Text('Burger',
                textAlign: TextAlign.center,
                            style: TextStyle(

                              color:ColorValues.BACKGROUND,
                              fontFamily: "customLight",
                              fontSize: 13.0,
                            ),
                          ),
                        ),
                        ),
                      ),
                      Container(

                        margin: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                        width: 100.0,
                        height: 40.0,


                        child: Card(

                          elevation: 5.0,
                          color:Colors.white,
                          shape: RoundedRectangleBorder(

                            borderRadius: BorderRadius.circular(2),
                          ),
                          child:  Container(

                            margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                            width: 100.0,
                            height: 40.0,
                            alignment: Alignment.center,


                            child: Text('Pizza',
                              textAlign: TextAlign.center,
                              style: TextStyle(

                                color:ColorValues.TEXT_COLOR,
                                fontFamily: "customLight",
                                fontSize: 13.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(

                        margin: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                        width: 100.0,
                        height: 40.0,


                        child: Card(

                          elevation: 5.0,
                          color:Colors.white,
                          shape: RoundedRectangleBorder(

                            borderRadius: BorderRadius.circular(2),
                          ),
                          child:  Container(

                            margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                            width: 100.0,
                            height: 40.0,
                            alignment: Alignment.center,


                            child: Text('Desi Food',
                              textAlign: TextAlign.center,
                              style: TextStyle(

                                color:ColorValues.TEXT_COLOR,
                                fontFamily: "customLight",
                                fontSize: 13.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(

                        margin: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                        width: 100.0,
                        height: 40.0,


                        child: Card(

                          elevation: 5.0,
                          color:Colors.white,
                          shape: RoundedRectangleBorder(

                            borderRadius: BorderRadius.circular(2),
                          ),
                          child:  Container(

                            margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                            width: 100.0,
                            height: 40.0,
                            alignment: Alignment.center,


                            child: Text('Pizza',
                              textAlign: TextAlign.center,
                              style: TextStyle(

                                color:ColorValues.TEXT_COLOR,
                                fontFamily: "customLight",
                                fontSize: 13.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(

                        margin: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                        width: 100.0,
                        height: 40.0,


                        child: Card(

                          elevation: 5.0,
                          color:Colors.white,
                          shape: RoundedRectangleBorder(

                            borderRadius: BorderRadius.circular(2),
                          ),
                          child:  Container(

                            margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                            width: 100.0,
                            height: 40.0,
                            alignment: Alignment.center,


                            child: Text('Pizza',
                              textAlign: TextAlign.center,
                              style: TextStyle(

                                color:ColorValues.TEXT_COLOR,
                                fontFamily: "customLight",
                                fontSize: 13.0,
                              ),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
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
                              child: new Card(
                                elevation: 5.0,
                                shape: RoundedRectangleBorder(

                                  borderRadius: BorderRadius.circular(10),
                                ),
                                margin:
                                EdgeInsets.fromLTRB(5.0,5.0, 5.0, 5.0),
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
                                                "image/heart_line.png",
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
                                                    onTap: () {
                                                      showModalBottomSheet(
                                                          context: context,
                                                          builder: (context) {
                                                            return Column(
                                                              mainAxisSize: MainAxisSize.min,
                                                              children: <Widget>[
                                                              ],
                                                            );
                                                          });

                                                      }),
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
}
}