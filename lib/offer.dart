import 'package:chainpay/color_const.dart';
import 'package:chainpay/text_constants.dart';
import 'package:flutter/cupertino.dart';

import 'common_widgets/rewards_collectnow.dart';
import 'common_widgets/rewards_listtile.dart';

class Offer extends StatefulWidget {
  const Offer({Key? key}) : super(key: key);

  @override
  State<Offer> createState() => _OfferState();
}

class _OfferState extends State<Offer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 14, left: 12, right: 12),
      color: Color(ColorConstants.baseColor),
      child: SingleChildScrollView(
        child: Column(
          children: [
            rewardslisttile(context, "tile3.png", TextConstants.rewardconttxt1,
                TextConstants.rewardconttxt2,
                redeem: Text("asaa")),
            const SizedBox(height: 12),
            rewardslisttile(context, "tile4.png", TextConstants.rewardconttxt1,
                TextConstants.rewardconttxt2,
                b: collectNow()),
            const SizedBox(height: 12),
            rewardslisttile(
              context,
              "tile5.png",
              TextConstants.rewardconttxt1,
              TextConstants.rewardconttxt2,
            ),
            const SizedBox(height: 12),
            rewardslisttile(
              context,
              "tile6.png",
              TextConstants.rewardconttxt1,
              TextConstants.rewardconttxt2,
            ),
            const SizedBox(height: 12),
            rewardslisttile(
              context,
              "tile7.png",
              TextConstants.rewardconttxt1,
              TextConstants.rewardconttxt2,
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
