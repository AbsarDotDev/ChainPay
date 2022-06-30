import 'package:chainpay/color_const.dart';
import 'package:flutter/material.dart';

profileTile(String icon1, String txt) {
  return Material(
    type: MaterialType.transparency,
    child: ListTile(
      focusColor: Color.fromARGB(255, 59, 61, 68),
      tileColor: Colors.transparent,
      leading: Image.asset("../assets/images/icons/$icon1"),
      title: Text(
        txt,
        style: TextStyle(
            fontFamily: "Bunito",
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Color(ColorConstants.btnTextColor)),
      ),
      trailing: Image.asset("../assets/images/icons/Vector.png"),
    ),
  );
}
