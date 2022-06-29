import 'package:chainpay/color_const.dart';
import 'package:chainpay/common_widgets/bal_cont_txt.dart';
import 'package:flutter/material.dart';

import '../text_constants.dart';
import 'common_heading.dart';

container(Color C, Widget t, Widget f, Widget a) {
  return Row(
    children: [
      Container(
        width: 140,
        height: 98,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: C,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 19,
              ),
              t,
              const SizedBox(
                height: 10,
              ),
              f,
              const SizedBox(
                height: 12,
              ),
              a
            ],
          ),
        ),
      ),
    ],
  );
}
