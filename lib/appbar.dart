import 'package:chainpay/color_const.dart';
import 'package:flutter/material.dart';

import 'common_widgets/noti_icon.dart';
import 'common_widgets/search.dart';
import 'login.dart';

ApB(BuildContext context) {
  return AppBar(
    title: Container(child: searchField("Search Users,ID’s etc")),
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
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: <Color>[
            Color(0xff1F222A),
            Color(0xff1F222A),
            Color(ColorConstants.appbar2)
          ])),
    ),
    actions: <Widget>[notiIcon()],
    bottom: TabBar(
      indicatorColor: Color(ColorConstants.btnTextColor),
      indicatorWeight: 5,
      indicatorSize: TabBarIndicatorSize.label,
      indicator: ShapeDecoration(
          shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.only(bottomRight: Radius.circular(10)))),
      tabs: <Widget>[
        Tab(
          text: "Home",
        ),
        Tab(
          text: "Balanace",
        ),
        Tab(
          text: "Offers",
        ),
        Tab(
          text: "Rewards",
        ),
      ],
    ),
  );
}
