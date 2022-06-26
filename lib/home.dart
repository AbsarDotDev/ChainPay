import 'package:chainpay/color_const.dart';
import 'package:chainpay/common_widgets/common_heading.dart';
import 'package:chainpay/text_constants.dart';
import 'package:flutter/material.dart';

import 'common_widgets/more_button.dart';
import 'common_widgets/service_box.dart';
import 'common_widgets/small_icon_tile.dart';
import 'common_widgets/team_box.dart';

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
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              commonHeading(TextConstants.homeHead1, 16, FontWeight.w600),
              moreButton()
            ]),
            const SizedBox(
              height: 12,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              smallIconTIle(
                  "scanner.png",
                  "Scan QR Code",
                  ColorConstants.tilecolor1,
                  ColorConstants.tilecolor11,
                  context),
              const SizedBox(
                width: 2,
              ),
              smallIconTIle(
                  "add_user.png",
                  "Send to Contact",
                  ColorConstants.tilecolor2,
                  ColorConstants.tilecolor22,
                  context),
            ]),
            const SizedBox(
              height: 8,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              smallIconTIle(
                  "financial.png",
                  "Scan QR Code",
                  ColorConstants.tilecolor3,
                  ColorConstants.tilecolor33,
                  context),
              smallIconTIle(
                  "swap.png",
                  "Send to Contact",
                  ColorConstants.tilecolor4,
                  ColorConstants.tilecolor44,
                  context),
            ]),
            const SizedBox(
              height: 12,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              commonHeading(TextConstants.homeHead2, 16, FontWeight.w600),
              moreButton()
            ]),
            const SizedBox(
              height: 12,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              smallIconTIle(
                  "scanner.png",
                  "Scan QR Code",
                  ColorConstants.tilecolor1,
                  ColorConstants.tilecolor11,
                  context),
              const SizedBox(
                width: 2,
              ),
              smallIconTIle(
                  "add_user.png",
                  "Send to Contact",
                  ColorConstants.tilecolor2,
                  ColorConstants.tilecolor22,
                  context),
            ]),
            const SizedBox(
              height: 8,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              smallIconTIle(
                  "financial.png",
                  "Scan QR Code",
                  ColorConstants.tilecolor3,
                  ColorConstants.tilecolor33,
                  context),
              smallIconTIle(
                  "swap.png",
                  "Send to Contact",
                  ColorConstants.tilecolor4,
                  ColorConstants.tilecolor44,
                  context),
            ]),
            const SizedBox(
              height: 12,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              commonHeading(TextConstants.homeHead3, 16, FontWeight.w600),
            ]),
            const SizedBox(
              height: 12,
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  serviceBox("video-play.png", "Movies"),
                  const SizedBox(
                    width: 10,
                  ),
                  serviceBox("bus.png", "Trains"),
                  const SizedBox(
                    width: 10,
                  ),
                  serviceBox("bus2.png", "Bus"),
                  const SizedBox(
                    width: 10,
                  ),
                  serviceBox("airplane.png", "Flights"),
                  const SizedBox(
                    width: 10,
                  ),
                  serviceBox("smart-car2.png", "Car"),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              commonHeading(TextConstants.homeHead4, 16, FontWeight.w600),
            ]),
            const SizedBox(
              height: 12,
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  serviceBox("video-play.png", "Movies"),
                  const SizedBox(
                    width: 10,
                  ),
                  serviceBox("bus.png", "Movies"),
                  const SizedBox(
                    width: 10,
                  ),
                  serviceBox("bus2.png", "Movies"),
                  const SizedBox(
                    width: 10,
                  ),
                  serviceBox("airplane.png", "Movies"),
                  const SizedBox(
                    width: 10,
                  ),
                  serviceBox("smart-car2.png", "Movies")
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              commonHeading(TextConstants.homeHead5, 16, FontWeight.w600),
            ]),
            const SizedBox(
              height: 12,
            ),
            Expanded(
              child: ListView(
                shrinkWrap: false,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  teamBox("image_1.png", "Shafiq"),
                  const SizedBox(
                    width: 10,
                  ),
                  teamBox("image_2.png", "Absar"),
                  const SizedBox(
                    width: 10,
                  ),
                  teamBox("image_3.png", "Subhan"),
                  const SizedBox(
                    width: 10,
                  ),
                  teamBox("image_4.png", "Rafay"),
                  const SizedBox(
                    width: 10,
                  ),
                  teamBox("image_5.png", "Ahmed"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
