import 'package:flutter/cupertino.dart';

import '../color_const.dart';

profileStats(String t1, String t2) {
  return Column(children: [
    Text(
      t1,
      style: TextStyle(
          color: Color(ColorConstants.btnColor),
          fontSize: 22,
          fontFamily: "Play",
          fontWeight: FontWeight.w900),
    ),
    Text(
      t2,
      style: TextStyle(
          color: Color(0xff939FA4),
          fontSize: 12,
          fontFamily: "Nunito",
          fontWeight: FontWeight.w400),
    ),
  ]);
}
