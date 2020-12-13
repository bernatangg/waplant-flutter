import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:waplant_flutter_app/ui/login_screen.dart';

void pageBack(BuildContext context) => Navigator.of(context).pop();

void pageOpen(BuildContext context, Widget page) => Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => page),
);

Future<dynamic> pageOpenWithResult(BuildContext context, Widget page) async {
  return await Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => page),
  );
}

void pageOpenAndRemovePrevious(BuildContext context, Widget page) =>
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => page),
      ModalRoute.withName(''),
    );

void forceLogout(BuildContext context) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.clear();
  pageOpenAndRemovePrevious(context, LoginScreen());
}
