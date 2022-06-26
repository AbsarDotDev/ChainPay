import 'package:chainpay/color_const.dart';
import 'package:flutter/material.dart';

import 'common_widgets/noti_icon.dart';
import 'common_widgets/search.dart';
import 'login.dart';

ApB(BuildContext context) {
  return AppBar(
    title: Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
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
            Center(child: searchField("Search Users,ID’s etc", context)),
            notiIcon(),
          ],
        ),
      ],
    ),
    automaticallyImplyLeading: false,
    flexibleSpace: Container(
      padding: EdgeInsets.all(100),
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
    actions: <Widget>[],
    bottom: TabBar(
      labelStyle: TextStyle(
          fontFamily: "Inter", fontWeight: FontWeight.w600, fontSize: 14),
      indicatorColor: Color(ColorConstants.btnTextColor),
      indicatorWeight: 5,
      indicatorSize: TabBarIndicatorSize.label,
      tabs: <Widget>[
        Tab(
          child: Text(
            "Home",
            textAlign: TextAlign.center,
          ),
        ),
        Tab(
          child: Text(
            "Balance",
            textAlign: TextAlign.center,
          ),
        ),
        Tab(
          child: Text(
            "Offer",
            textAlign: TextAlign.center,
          ),
        ),
        Tab(
          child: Text(
            "Rewards",
            textAlign: TextAlign.center,
          ),
        ),
      ],
    ),
  );
}
