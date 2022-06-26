import 'package:chainpay/color_const.dart';
import 'package:flutter/material.dart';

searchField(String txt, BuildContext context) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * 0.6,
    child: TextField(
      decoration: InputDecoration(
        suffixIcon: Icon(Icons.search_outlined,
            color: Color(ColorConstants.commonIcon)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        filled: true,
        fillColor: Color(ColorConstants.commonBorder),
        hintText: txt,
        hintStyle: const TextStyle(
          fontFamily: "spartan",
          fontWeight: FontWeight.w600,
          color: Color(0xffB0BEC5),
        ),
      ),
      textAlign: TextAlign.center,
    ),
  );
}
