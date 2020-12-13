import 'package:flutter/material.dart';

Color hexColor(String hex) =>
    new Color(int.parse(hex.substring(1,7), radix: 16) + 0xFF000000);

// Main Color
Color colorPrimary = hexColor("#3ED400");
Color colorPrimaryGradientEnd = hexColor("#9BEC79");
Color colorPrimaryDark = hexColor("#66B821");

Color colorDanger = hexColor("#FF6724");
Color colorSearchBox = hexColor("#F5F5F5");

// Background
Color colorBgDefault = hexColor("#FBFBFB");

// Font
const Color colorFontDefault = Color(0xFF0D1904);
const Color colorFontBlue = Color(0xFF5483EF);
const Color colorFontWhite = Colors.white;
const Color colorFontGrey = Color(0xFFBDC1BB);
const Color colorFontPrimary = Color(0xFF3ED400);
const Color colorFontDanger = Color(0xFFEB5757);

