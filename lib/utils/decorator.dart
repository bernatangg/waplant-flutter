import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'app_colors.dart';

BoxDecoration primaryGradientDecorator() {
  return BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: <Color>[
        colorPrimary,
        colorPrimaryGradientEnd,
      ],
    ),
  );
}

BoxDecoration roundCard(
    {Color color = Colors.white, double cornerRadius = 8.0}) {
  return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.all(Radius.circular(cornerRadius)),
      border: Border.all(width: 0.5, color: hexColor("#a0a4a8")));
}

BoxDecoration roundCardColor({
  Color color = Colors.white,
  Color borderColor = Colors.grey,
  double cornerRadius = 5.0,
}) {
  return BoxDecoration(
    color: color,
    borderRadius: BorderRadius.all(Radius.circular(cornerRadius)),
    border: Border.all(
      width: 0.5,
      color: borderColor,
    ),
  );
}

BoxDecoration roundMaterialCard({double cornerRadius = 8.0}) {
  return BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.all(Radius.circular(cornerRadius)),
    border: Border.all(width: 0.5, color: hexColor("#a0a4a8")),
    boxShadow: [
      BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.05),
        blurRadius: 40.0,
        spreadRadius: 1.0,
        offset: Offset.zero,
      )
    ],
  );
}

BoxDecoration roundCardGradient({double cornerRadius = 5.0}) {
  return BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(cornerRadius)),
    border: Border.all(width: 0.5, color: hexColor("#a0a4a8")),
    gradient: LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: <Color>[
        colorPrimary,
        colorPrimaryGradientEnd,
      ],
    ),
  );
}

BoxDecoration roundBg({Color color = Colors.white, double cornerRadius = 5.0}) {
  return BoxDecoration(
    color: color,
    borderRadius: BorderRadius.all(Radius.circular(cornerRadius)),
  );
}

BoxDecoration circleBg({Color color = Colors.white}) {
  return BoxDecoration(
    color: color,
    shape: BoxShape.circle,
  );
}

BoxDecoration boxDividerVertical() {
  return BoxDecoration(
    color: Colors.white,
    border: Border(
      bottom: BorderSide(
        width: 0.5,
        color: hexColor("#a0a4a8"),
      ),
    ),
  );
}

BoxDecoration roundCardBorder({
  Color color = Colors.white,
  double cornerRadius = 8.0,
  Color borderColor = Colors.transparent,
}) {
  return BoxDecoration(
    color: color,
    borderRadius: BorderRadius.all(Radius.circular(cornerRadius)),
    border: Border.all(
      width: 1,
      color: borderColor,
    ),
  );
}
