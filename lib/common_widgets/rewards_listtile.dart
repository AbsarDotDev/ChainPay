import 'package:chainpay/color_const.dart';
import 'package:flutter/material.dart';

import '../text_constants.dart';

rewardslisttile(context, String s, String t, tx,
    {Widget b = const SizedBox.shrink(),
    Widget redeem = const SizedBox.shrink()}) {
  return Container(
    padding: const EdgeInsets.only(left: 12, right: 12, top: 10, bottom: 10),
    // height: 101,
    width: MediaQuery.of(context).size.width * 1,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Color(ColorConstants.blankCont),
    ),
    child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      Image.asset("../assets/images/$s"),
      const SizedBox(width: 14),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            t,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 15,
              fontFamily: "Nunito",
              color: Color(ColorConstants.btnTextColor),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          redeem,
          Text(
            tx,
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 10,
                fontFamily: "Nunito",
                color: Color(ColorConstants.btnTextColor)),
          ),
          const SizedBox(
            height: 8,
          ),
          b
        ],
      ),
    ]),
  );
}
