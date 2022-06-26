import 'package:flutter/material.dart';

searchField(String txt) {
  return TextField(
      decoration: InputDecoration(
    hintText: txt,
    hintStyle: TextStyle(
      fontFamily: "spartan",
      fontWeight: FontWeight.w700,
      color: Color(0xffB0BEC5),
    ),
  ));
}
