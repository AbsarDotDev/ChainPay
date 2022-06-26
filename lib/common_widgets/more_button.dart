import 'package:flutter/material.dart';

import '../text_constants.dart';

moreButton() {
  return Container(
    decoration: const BoxDecoration(
        color: Color(0xff343645),
        borderRadius: BorderRadius.all(Radius.circular(5))),
    height: 18,
    width: 52,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          TextConstants.homeHeadButton,
          style: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w600,
              fontFamily: "Nunito",
              color: Color(0xff696D78)),
        ),
        const Icon(Icons.arrow_forward_ios, size: 10, color: Color(0xff696D78))
      ],
    ),
  );
}
