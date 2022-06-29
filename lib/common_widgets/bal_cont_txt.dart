import 'package:chainpay/color_const.dart';
import 'package:flutter/material.dart';

import '../text_constants.dart';

balContTxt(String s, double size, FontWeight w, Color C) {
  return Text(
    s,
    style: TextStyle(
        fontFamily: "spartan", fontSize: size, fontWeight: w, color: C),
  );
}
