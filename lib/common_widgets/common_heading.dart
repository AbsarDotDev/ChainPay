import 'package:chainpay/color_const.dart';
import 'package:flutter/material.dart';

commonHeading(String s, double size, FontWeight w) {
  return Text(
    s,
    style: TextStyle(
        fontFamily: "spartan",
        fontSize: size,
        fontWeight: w,
        color: Color(ColorConstants.btnTextColor)),
  );
}
