import 'package:chainpay/rewards.dart';
import 'package:flutter/material.dart';
import 'appbar.dart';
import 'balance.dart';
import 'home.dart';
import 'offer.dart';

class TabBaar extends StatefulWidget {
  const TabBaar({Key? key}) : super(key: key);

  @override
  State<TabBaar> createState() => _TabBaarState();
}

class _TabBaarState extends State<TabBaar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        appBar: apB(context),
        body: const TabBarView(
          children: <Widget>[
            Home(),
            Balance(),
            Offer(),
            Rewards(),
          ],
        ),
      ),
    ));
  }
}
