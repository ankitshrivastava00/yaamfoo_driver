import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:yaamfoo_driver/values/ColorValues.dart';

class Constant {
  static bool V_CONTROL = true; // If true then Feature will

  // static const String BASE_URL = "http://ziasytechnology.ca/merrytea/e-commerce/index.php/appController/";
  // static const String BASE_URL = "http://desithekanews.com/287merrytea/index.php/appController/";
  // static const String CONSTANT_IMAGE_PATH = "http://desithekanews.com/287merrytea/assets/uploads/";
 // static const String CONSTANT_IMAGE_PATH = "http://ziasytechnology.ca/merrytea/e-commerce/assets/uploads/";
  static const String CONSTANT_IMAGE_PATH = "http://287merryteasagar.in/assets/uploads/";
  static const String BASE_URL = "https://287merryteasagar.in/index.php/appController/";
  static const String PRODUCT_LIST = "productlist";
  static const String SLIDER_LIST = "sliderimages";
  static const String BANNER_LIST = "banner";
  static const String SIGNUP = "signup";
  static const String SIGNIN = "signin";
  static const String SEND_OTP = "sendotp";
  static const String SEND_OTP_LOGIN = "sendloginotp";
  static const String ADD_ADDRESS = "addclientAddress";
  static const String UPDATE_ADDRESS = "updateclientAddress";
  static const String CLIENT_ADDRESS = "clientAddress";
  static const String CLIENT_CART_DATA_LIST= "addtocart";
  static const String CLIENT_CART_DATA= "addsinglecart";
  static const String CLIENT_CART_DATA_COUNT= "cartcount";
  static const String CLIENT_CART_REMOVE= "removecartproduct";
  static const String CART_DETAIL = "cartlist";
  static const String ORDER_DETAIL = "orderlist";
  static const String ORDER_SINGLE_DETAIL = "orderdetailslist";
  static const String SEARCH_PRODUCT = "searchproduct";
  static const String CONTACT_US = "contactus";
  static const String SUBMIT_ORDER = "submitorder";
  static const String CANCEL_ORDER = "cancelorder";
  static const String Review = "productRating";
  static const String SubmitReview = "submitRating";
  static const String WhatWeDo = "whatwedo";
  static const String promocode = "promocode";
  static const String checkpromo = "applypromocode";
  static const String notification = "notificationlist";
  static const String notificationOffOn = "clientnotify";

  static const String deleteaddress = "removeclientAddress";
  static const String deliveryCharges = "dcharge";
  static const String setting = "settings";

  static const int SERVICE_TIME_OUT = 30000;
  static const int CONNECTION_TIME_OUT = 30000;
  static bool IS_INDIVIDUAL = true;
  static BuildContext applicationContext;
  static String pageNameFr;
  static bool isAlreadyLoggedIn = false;
  static bool isBackVisible = false;
  static int currentIndex = 0;
  static String customRegular = "customRegular";
  static String customItalic = "customItalic";
  static String customBold = "customBold";
  static String REQUESTED = "2";
  static String ACCEPTED = "3";
  static String INVITED = "4";
  static String NON_CONNECTION = "1";
  static String SENT_REQUEST = "5";
  static String PEOPLE_YOU_MAY_KNOW = "6";
  static String PENDING = "7";
  static String RECIEVED = "8";
  static String LINK_URL = "1";
  static String JOIN_GROUP = "2";
  static String CALL_NOW = "3";
  static String INQUIRE_NOW = "4";
  static String LEARN_MORE = "1";
  static String GET_OFFER = "2";
  static String APPLY_NOW = "3";
  static String CONST_REQUESTED = "Requested";
  static String CONST_REPLIED = "Replied";
  static String CONST_PENDING = "Pending";
  static String GROUP_TYPE_PUBLIC = "public";
  static String GROUP_TYPE_PRIVATE = "private";
  static Color CURSOR_COLOR = new Color(ColorValues.HEADING_COLOR_EDUCATION);

}
