import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void shortToast(String msg) {
  Fluttertoast.cancel();

  Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.black45,
      textColor: Colors.white,
      fontSize: 16.0);
}

void longToast(String msg) {
  Fluttertoast.cancel();

  Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.black45,
      textColor: Colors.white,
      fontSize: 16.0);
}
