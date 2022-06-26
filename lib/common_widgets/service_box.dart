import 'package:chainpay/color_const.dart';
import 'package:flutter/material.dart';

serviceBox(String img, String title) {
  return Expanded(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            color: Color(ColorConstants.serviceBox),
          ),
          child: Center(child: Image.asset("../assets/images/icons/$img")),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: const TextStyle(
              color: Color(0xffAAAAAA),
              fontFamily: "spartan",
              fontSize: 10,
              fontWeight: FontWeight.w600),
        )
      ],
    ),
  );
}
