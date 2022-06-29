import 'package:chainpay/color_const.dart';
import 'package:chainpay/common_widgets/bal_cont_txt.dart';
import 'package:flutter/material.dart';

import '../text_constants.dart';
import 'common_heading.dart';

container(Color C, Widget t, Widget f, Widget a, context) {
  return Container(
    padding: EdgeInsets.all(15),
    width: MediaQuery.of(context).size.width * 0.4,
    height: 98,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: C,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [t, f, a],
    ),
  );
}
