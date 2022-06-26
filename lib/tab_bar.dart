import 'package:chainpay/rewards.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

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
    return DefaultTabController(
        initialIndex: 1,
        length: 4,
        child: Scaffold(
          appBar: ApB(context),
          body: const TabBarView(
            children: <Widget>[
              Home(),
              Balance(),
              Offer(),
              Rewards(),
            ],
          ),
        ));
  }
}
