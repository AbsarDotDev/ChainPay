import 'package:flutter/material.dart';

teamBox(String img, String title) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage("../assets/images/team/$img"),
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
  );
}
