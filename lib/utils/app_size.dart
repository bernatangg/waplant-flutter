import 'package:flutter/material.dart';

// Corner Radius
const double cornerRadiusDefault = 4.0;

// Padding
const double padMini = 4.0;
const double padSmall = 8.0;
const double padMedium = 16.0;
const double padLarge = 24.0;
const double padExtraLarge = 32.0;
const double padXXL = 48.0;

// Margin.
const double marginMini = 4.0;
const double marginSmall = 8.0;
const double marginMedium = 16.0;
const double marginLarge = 24.0;
const double marginExtraLarge = 32.0;
const double marginXXL = 48.0;

// Screen Sizes
class _SizeModel {
  static var isInitialize = false;
  static var _widthOfScreen = 1.0;
  static var _heightOfScreen = 1.0;
  static var _heightOfStatusBar = 1.0;
}

void _initSizeModel(BuildContext context) {
  final mq = MediaQuery.of(context);

  _SizeModel._heightOfScreen = mq.size.height;
  _SizeModel._widthOfScreen = mq.size.width;
  _SizeModel._heightOfStatusBar = mq.padding.top;
}

double heightOfScreen(BuildContext context) {
  if (!_SizeModel.isInitialize) _initSizeModel(context);
  return _SizeModel._heightOfScreen;
}

double widthOfScreen(BuildContext context) {
  if (!_SizeModel.isInitialize) _initSizeModel(context);
  return _SizeModel._widthOfScreen;
}

double heightOfStatusBar(BuildContext context) {
  if (!_SizeModel.isInitialize) _initSizeModel(context);
  return _SizeModel._heightOfStatusBar;
}
