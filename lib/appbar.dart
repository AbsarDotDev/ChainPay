import 'package:chainpay/color_const.dart';
import 'package:flutter/material.dart';

import 'login.dart';

ApB(BuildContext context) {
  return AppBar(
    title: Container(
      child: TextField(
          decoration: InputDecoration(
        hintText: "Search Users,ID’s etc",
        hintStyle: TextStyle(
          fontFamily: "spartan",
          fontWeight: FontWeight.w700,
          color: Color(0xffB0BEC5),
        ),
      )),
    ),
    leading: InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Login()),
        );
      },
      child: CircleAvatar(
        backgroundColor: Color(ColorConstants.coomon_border),
        child: Image.asset("assets/images/avatar.png"),
      ),
    ),
    flexibleSpace: Container(
      padding: EdgeInsets.all(50),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: <Color>[
            Color(ColorConstants.appbar2),
            Color(ColorConstants.appbar2),
          ])),
    ),
    actions: <Widget>[
      CircleAvatar(
        backgroundColor: Color(ColorConstants.coomon_border),
        child: IconButton(
          icon: Icon(
            Icons.notifications_outlined,
            color: Color(ColorConstants.coomon_icon),
          ),
          onPressed: () {
            // do something
          },
        ),
      )
    ],
  );
}
