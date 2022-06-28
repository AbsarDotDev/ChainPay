import 'package:flutter/material.dart';

import '../color_const.dart';
import '../nootifications.dart';

notiIcon(BuildContext context) {
  return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Notifications()),
        );
      },
      child: CircleAvatar(
        backgroundColor: Color(ColorConstants.commonBorder),
        child: Image.asset("assets/images/notification.png"),
      ));
}
