import 'package:chainpay/color_const.dart';
import 'package:chainpay/common_widgets/bal_cont_txt.dart';
import 'package:flutter/material.dart';

import '../text_constants.dart';
import 'common_heading.dart';

blankCont() {
  return Container(
    width: 100,
    height: 100,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Color(ColorConstants.blankCont),
    ),
  );
}
