import 'package:flutter/material.dart';

import '../color_const.dart';

notiIcon() {
  return CircleAvatar(
    backgroundColor: Color(ColorConstants.commonBorder),
    child: Image.asset("assets/images/notification.png"),
  );
}
