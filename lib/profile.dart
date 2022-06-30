import 'package:chainpay/common_widgets/profile_card_stats.dart';
import 'package:chainpay/tab_bar.dart';
import 'package:chainpay/text_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'color_const.dart';
import 'common_widgets/profile_tiles.dart';
import 'common_widgets/small_button.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(ColorConstants.baseColor),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(
                    left: 12, right: 12, top: 4, bottom: 4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(ColorConstants.homecard)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CircleAvatar(
                          backgroundColor: Color(0xff5626C4),
                          radius: 41,
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/profile.png"),
                            radius: 40,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  TextConstants.profileName,
                                  style: TextStyle(
                                      color: Color(ColorConstants.btnTextColor),
                                      fontSize: 25,
                                      fontFamily: "spartan",
                                      fontWeight: FontWeight.w900),
                                ),
                                Image.asset("assets/images/ribbon.png")
                              ],
                            ),
                            Text(
                              TextConstants.profileLevel,
                              style: TextStyle(
                                  color: Color(ColorConstants.balcommon),
                                  fontSize: 11,
                                  fontFamily: "Nunito",
                                  fontWeight: FontWeight.w800),
                            ),
                            Image.asset("assets/images/level.png")
                          ],
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: IconButton(
                            icon: const Icon(Icons.close_outlined),
                            color: Color(ColorConstants.btnTextColor),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const TabBaar()),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.6,
                            child: Row(
                              children: [
                                profileStats(TextConstants.profileTransaction,
                                    "Transactions"),
                                VerticalDivider(
                                  width: 10,
                                  thickness: 1,
                                  indent: 2,
                                  endIndent: 0,
                                  color: Colors.grey,
                                ),
                                profileStats(
                                    TextConstants.profilePoints, "Points"),
                                VerticalDivider(
                                  width: 10,
                                  thickness: 1,
                                  indent: 2,
                                  endIndent: 0,
                                  color: Colors.grey,
                                ),
                                profileStats(TextConstants.profileRank, "Rank"),
                              ],
                            ),
                          ),
                          smallButton("Explore", Icons.arrow_left_outlined, 100,
                              context)
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        smallButton("Edit", Icons.edit, 120, context),
                        smallButton("Settings", Icons.settings, 100, context),
                        smallButton("Share", Icons.share, 100, context)
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding:
                    EdgeInsets.only(left: 12, right: 12, top: 4, bottom: 4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(ColorConstants.homecard)),
                child: ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    profileTile("receipt-minus.png", "All Transactions"),
                    profileTile("caution_sign.png", "Pending Transactions"),
                    profileTile("Clock.png", "Refund Status"),
                    profileTile("caution_sign.png", "Raise an issue"),
                    profileTile("Heart_white.png", "Help and Support")
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding:
                    EdgeInsets.only(left: 12, right: 12, top: 4, bottom: 4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(ColorConstants.homecard)),
                child: ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    profileTile("caution_sign.png", "About Us"),
                    profileTile("Clock.png", "Terms and Conditions"),
                    profileTile("caution_sign.png", "Feedback"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
