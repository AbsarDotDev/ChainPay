import 'package:chainpay/color_const.dart';
import 'package:flutter/material.dart';

smallIconTIle(String img, String txt, int c1, int c2, BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.42,
    decoration: BoxDecoration(
        color: Color(c2),
        borderRadius: const BorderRadius.all(Radius.circular(5))),
    child: Row(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Color(c1),
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(5),
                  bottomRight: Radius.circular(5))),
          height: 43,
          child: SizedBox(
              width: 40, child: Image.asset("../assets/images/icons/$img")),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(left: 10),
            height: 43,
            child: Center(
                child: Text(
              txt,
              style: TextStyle(
                  fontFamily: "spartan",
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: Color(ColorConstants.btnTextColor)),
            )),
          ),
        )
      ],
    ),
  );
}
