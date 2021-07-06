import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:yaamfoo_driver/activity/SettingScreen.dart';
import 'package:yaamfoo_driver/activity/order/OrderHistory.dart';
import 'package:yaamfoo_driver/drawer/screens/MyCart.dart';
import 'package:yaamfoo_driver/drawer/screens/favorite.dart';
import 'package:yaamfoo_driver/drawer/screens/home.dart';
import 'package:yaamfoo_driver/drawer/screens/profile.dart';
import 'package:yaamfoo_driver/drawer/screens/search.dart';

class TabNavigationItem {
  final Widget page;
  final Widget title;
  final Icon icon;

  TabNavigationItem({this.page, this.title, this.icon});

  static List<TabNavigationItem> get items => [
        TabNavigationItem(
          page: Home(),
          icon: Icon(Icons.home_filled),
          title: Text("Home"),
        ),
        TabNavigationItem(
          page: OrderHistory(),
          icon: Icon(Icons.favorite),
          title: Text('Favorite'),
        ),
        TabNavigationItem(
          page: Profile(),
          icon: Icon(Icons.shopping_cart),
          title: Text('Cart'),
        ), TabNavigationItem(
          page: SettingScreen(),
      icon: Icon(Icons.person_rounded),
      title: Text('Profile'),
        ),
      ];
}
