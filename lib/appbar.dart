import 'package:chainpay/color_const.dart';
import 'package:chainpay/profile.dart';
import 'package:flutter/material.dart';

import 'common_widgets/noti_icon.dart';
import 'common_widgets/search.dart';
import 'login.dart';

apB(BuildContext context) {
  return AppBar(
    toolbarHeight: 80,
    backgroundColor: Color(ColorConstants.baseColor),
    title: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Profile()),
                );
              },
              child: CircleAvatar(
                backgroundColor: Color(ColorConstants.commonBorder),
                child: Image.asset("assets/images/avatar.png"),
              ),
            ),
            Center(child: searchField("Search Users,ID’s etc", context)),
            notiIcon(context),
          ],
        ),
      ],
    ),
    automaticallyImplyLeading: false,
    flexibleSpace: Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(20)),
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: <Color>[
                Colors.transparent,
                Color.fromARGB(148, 31, 34, 42),
                Color(0xff1F222A)
              ])),
    ),
    elevation: 0,
    bottom: TabBar(
      labelStyle: const TextStyle(
          fontFamily: "Inter", fontWeight: FontWeight.w600, fontSize: 15),
      indicatorColor: Color(ColorConstants.btnTextColor),
      indicatorWeight: 5,
      indicatorSize: TabBarIndicatorSize.label,
      tabs: const <Widget>[
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
