import 'package:flutter/material.dart';
import '../color_const.dart';
import '../text_constants.dart';

shadow_button(String txt) {
  return Container(
    child: Center(
      child: Text(
        txt,
        style: TextStyle(
            fontFamily: 'Russo',
            color: Color(ColorConstants.btnTextColor),
            fontSize: 25),
      ),
    ),
    height: 46,
    width: 183,
    decoration: new BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: Color(ColorConstants.btnColor),
      boxShadow: [
        BoxShadow(
          color: Color(ColorConstants.btnColorShadow),
          // soften the shadow
          spreadRadius: 0.02, //extend the shadow
          offset: Offset(
            3.5, // Move to right 10  horizontally
            3.5, // Move to bottom 10 Vertically
          ),
        )
      ],
    ),
  );
}
