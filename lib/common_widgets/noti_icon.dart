import 'package:flutter/material.dart';

import '../color_const.dart';

notiIcon() {
  return CircleAvatar(
      backgroundColor: Color(ColorConstants.coomon_border),
      child: IconButton(
        icon: Icon(
          Icons.notifications_outlined,
          color: Color(ColorConstants.coomon_icon),
        ),
        onPressed: () {
          // do something
        },
      ));
}
