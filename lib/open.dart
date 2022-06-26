import 'package:chainpay/color_const.dart';
import 'package:chainpay/common_widgets/button_shadow.dart';
import 'package:chainpay/text_constants.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class Open extends StatelessWidget {
  const Open({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(ColorConstants.baseColor),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
            ),
            Center(
              child: Image.asset("assets/images/logo.png"),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Login()),
                  );
                },
                child: shadowButton(TextConstants.instantPay)),
            const SizedBox(
              height: 10,
            ),
            Text(
              TextConstants.openTxt,
              style: TextStyle(
                  fontFamily: 'Play',
                  color: Color(ColorConstants.paraTxt),
                  fontSize: 10),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Image.asset("assets/images/dots.png"),
            ),
          ],
        ),
      ),
    );
  }
}
