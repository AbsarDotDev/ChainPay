import 'package:chainpay/color_const.dart';
import 'package:chainpay/common_widgets/common_heading.dart';
import 'package:chainpay/text_constants.dart';
import 'package:flutter/material.dart';

import 'common_widgets/more_button.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(13),
        color: Color(ColorConstants.baseColor),
        height: MediaQuery.of(context).size.height * 1,
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              commonHeading(TextConstants.homeHead1, 16, FontWeight.w600),
              moreButton()
            ])
          ],
        ),
      ),
    );
  }
}
