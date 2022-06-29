import 'package:chainpay/color_const.dart';
import 'package:flutter/material.dart';

import '../text_constants.dart';

collectNow() {
  return InkWell(
    onTap: () {},
    child: Container(
      height: 28,
      width: 101,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(ColorConstants.rewardbut),
      ),
      child: Center(
        child: Text(
          TextConstants.rewardbutt,
          style: TextStyle(
              fontFamily: 'Nunito',
              color: Color(ColorConstants.rewardbut),
              fontSize: 15,
              fontWeight: FontWeight.w600),
        ),
      ),
    ),
  );
}
