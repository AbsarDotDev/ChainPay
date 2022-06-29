import 'dart:html';

import 'package:chainpay/color_const.dart';
import 'package:chainpay/common_widgets/bal_cont_txt.dart';
import 'package:chainpay/common_widgets/button_shadow.dart';
import 'package:chainpay/common_widgets/common_container.dart';
import 'package:chainpay/common_widgets/container.dart';
import 'package:chainpay/text_constants.dart';
import 'package:flutter/material.dart';

import 'common_widgets/common_heading.dart';

class Balance extends StatefulWidget {
  const Balance({Key? key}) : super(key: key);

  @override
  State<Balance> createState() => _BalanceState();
}

class _BalanceState extends State<Balance> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(ColorConstants.baseColor),
      padding: const EdgeInsets.only(top: 14, left: 12, right: 12, bottom: 60),
      child: Container(
        padding: EdgeInsets.only(left: 12, right: 12, top: 12),
        height: 300,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(ColorConstants.homecard)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Image.asset('assets/images/arrowleft.png'),
                ),
                commonHeading(TextConstants.baltit1, 16, FontWeight.w600),
                const CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage("assets/images/frame.png"),
                )
              ],
            ),
            const SizedBox(
              height: 7,
            ),
            Center(
              child: Text(
                TextConstants.balsub1,
                style: TextStyle(
                  fontFamily: 'Spartan',
                  fontSize: 36,
                  fontWeight: FontWeight.w700,
                  color: Color(ColorConstants.balcommon),
                ),
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            Center(
              child: Text(
                TextConstants.balsubs1,
                style: TextStyle(
                  fontFamily: 'Spartan',
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Color(ColorConstants.balcommon),
                ),
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                container(
                    Color(ColorConstants.balcont1),
                    balContTxt(
                      TextConstants.baltit2,
                      16,
                      FontWeight.w700,
                      Color(ColorConstants.balconttxt1),
                    ),
                    balContTxt(
                      TextConstants.balsub2,
                      10,
                      FontWeight.w600,
                      Color(ColorConstants.balconttxt1),
                    ),
                    balContTxt(
                      TextConstants.balsubs2,
                      15,
                      FontWeight.w700,
                      Color(ColorConstants.balconttxt1),
                    ),
                    context),
                const SizedBox(width: 18),
                container(
                    Color(ColorConstants.balcont2),
                    balContTxt(
                      TextConstants.baltit3,
                      16,
                      FontWeight.w500,
                      Color(ColorConstants.balconttxt2),
                    ),
                    balContTxt(
                      TextConstants.balsub3,
                      10,
                      FontWeight.w600,
                      Color(ColorConstants.balconttxt2),
                    ),
                    balContTxt(
                      TextConstants.balsubs3,
                      15,
                      FontWeight.w700,
                      Color(ColorConstants.balconttxt2),
                    ),
                    context),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                container(
                    Color(ColorConstants.balcont3),
                    balContTxt(
                      TextConstants.baltit4,
                      16,
                      FontWeight.w700,
                      Color(ColorConstants.balconttxt1),
                    ),
                    balContTxt(
                      TextConstants.balsub4,
                      10,
                      FontWeight.w600,
                      Color(ColorConstants.balconttxt1),
                    ),
                    balContTxt(
                      TextConstants.balsubs4,
                      15,
                      FontWeight.w700,
                      Color(ColorConstants.balconttxt3),
                    ),
                    context),
                const SizedBox(
                  width: 115,
                  height: 79,
                ),
                Image.asset("assets/images/arrowvector.png")
              ],
            ),
            const SizedBox(
              height: 14,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 13, right: 13, bottom: 14),
              child: Container(
                height: 43,
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(ColorConstants.commonCont),
                ),
                child: Center(
                  child: Text(
                    TextConstants.balbut,
                    style: TextStyle(
                        fontFamily: 'spartan',
                        color: Color(ColorConstants.btnTextColor),
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
