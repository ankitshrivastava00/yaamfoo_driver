import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yaamfoo_driver/activity/order/OrderHistory.dart';
import 'package:yaamfoo_driver/drawer/screens/MyCart.dart';
import 'package:yaamfoo_driver/drawer/screens/favorite.dart';
import 'package:yaamfoo_driver/drawer/screens/home.dart';
import 'package:yaamfoo_driver/drawer/screens/profile.dart';
import 'package:yaamfoo_driver/drawer/tabs/bottom_tabs.dart';
import 'package:yaamfoo_driver/values/ColorValues.dart';

class TabsPage extends StatefulWidget {
  int selectedIndex = 0;

  TabsPage({this.selectedIndex});

  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
 // int _selectedIndex = 0;
  final _selectedItemColor = ColorValues.TEXT_COLOR;
  final _unselectedItemColor = ColorValues.TEXT_COLOR;
  final _selectedBgColor = ColorValues.BACKGROUND;
  final _unselectedBgColor = Colors.transparent;

  void _onItemTapped(int index) {
    setState(() {
      widget.selectedIndex  = index;
    });
  }
 /* void _onItemTapped(int index) {
    setState(() {
      widget.selectedIndex = index;
      _selectedIndex = widget.selectedIndex;
      print(_selectedIndex);
    });
  }
 */ @override
  void initState() {
    _onItemTapped(widget.selectedIndex);
    super.initState();
  }

  Color _getBgColor(int index) =>
      widget.selectedIndex == index ? _selectedBgColor : _unselectedBgColor;

  Color _getItemColor(int index) =>
      widget.selectedIndex  == index ? _selectedItemColor : _unselectedItemColor;

  Widget _buildIcon(String iconData, String text, int index) => Container(
    width: 60.0,
    height: kBottomNavigationBarHeight,
    child: Material(
      color: _getBgColor(index),
      child: InkWell(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(iconData,width: 22.0,height: 22.0,color: _getItemColor(index)),
           SizedBox(height: 5.0,),
           // Icon(iconData),
            Text(widget.selectedIndex  == index ?text:'',
                style: TextStyle(fontSize: 12, color: _getItemColor(index))),
          ],
        ),
        onTap: () => _onItemTapped(index),
      ),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Scaffold(
        body: IndexedStack(
          index: widget.selectedIndex,
          children: [
            for (final tabItem in TabNavigationItem.items) tabItem.page,
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: _buildIcon('image/home.png', 'Home', 0),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: _buildIcon('image/order_history.png', 'Order', 1),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: _buildIcon('image/user.png', 'Profile', 2),
            title: SizedBox.shrink(),
          ),

          BottomNavigationBarItem(
            icon: _buildIcon('image/setting.png', 'Setting', 3),
            title: SizedBox.shrink(),
          ),
        ],
        currentIndex: widget.selectedIndex ,
        selectedItemColor: _selectedItemColor,
        unselectedItemColor: _unselectedItemColor,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,


      ),
    );
  }

  /*
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[

          BottomNavigationBarItem(
            backgroundColor:Colors.white,

            icon: Icon(Icons.home_filled),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.home, 'Home', 0),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.favorite, 'Favorite', 1),
            title: SizedBox.shrink(),
        //    icon: Icon(Icons.favorite),
         //   title: Text('Favorite'),
          ),
          BottomNavigationBarItem(
            backgroundColor:Colors.white,


          //  icon: Icons.image(),
           icon: Icon(Icons.shopping_cart),
            title: Text('Cart',style: TextStyle(
             // color: ColorValues.BACKGROUND,
              fontSize: 15.0,
              fontFamily: "customLight",

            ),
            ),
            ),

          BottomNavigationBarItem(
            backgroundColor:Colors.white,

            icon: Icon(Icons.person_rounded),
            title: Text('Profile'),
          ),
        ],
      *//*  backgroundColor:ColorValues.TEXT_COLOR,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        showSelectedLabels: true,
        selectedItemColor:ColorValues.BACKGROUND,
        unselectedItemColor: ColorValues.TEXT_COLOR,
        elevation: 5.0,*//*
       // onTap: _onItemTapped,
      ),
    );
  }*/
}