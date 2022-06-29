import 'package:flutter/material.dart';

import '../text_constants.dart';

smallButton(String t, IconData i, double w, context) {
  return Directionality(
    textDirection: TextDirection.rtl,
    child: Container(
      width: MediaQuery.of(context).size.width * 0.27,
      child: TextButton.icon(
          label: Text(t),
          icon: Icon(i),

          // style: TextButton.styleFrom(
          //   primary: Color(0xffFFFFFF),
          // ),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color(0xff343645)),
              foregroundColor: MaterialStateProperty.all(Color(0xffFFFFFF))),
          onPressed: () {}),
    ),
  );
  // return Container(
  //   decoration: const BoxDecoration(
  //       color: Color(0xff343645),
  //       borderRadius: BorderRadius.all(Radius.circular(5))),
  //   height: 28,
  //   width: 89,
  //   child: Row(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: [
  //       Text(
  //         t,
  //         style: const TextStyle(
  //             fontSize: 11,
  //             fontWeight: FontWeight.w600,
  //             fontFamily: "Nunito",
  //             color: Color.fromARGB(0, 255, 255, 255)),
  //       ),
  //       Icon(i, size: 17, color: Color.fromARGB(0, 255, 255, 255))
  //     ],
  //   ),
  // );
}
