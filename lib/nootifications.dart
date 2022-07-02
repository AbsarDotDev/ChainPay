import 'package:chainpay/appbar.dart';
import 'package:chainpay/color_const.dart';
import 'package:chainpay/home.dart';
import 'package:chainpay/tab_bar.dart';
import 'package:chainpay/text_constants.dart';
import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  List<String> noti = [
    "Recharge Completed",
    "Money Recieved",
    "Offer Unlocked"
  ];
  List<String> notisub = [
    "Your last recharge on 9847229989 of 199 rs has been succesfully completed.",
    "Your account ***21445 has been recieved an amount of Rs 1000 using upi transaction.",
    "You have an unlockd offer avilable go to offer section or tap to view the offer.",
  ];
  List<String> notitime = [
    "May 20  - 12:32 Pm",
    "May 20  - 12:45 Pm",
    "May 20  - 2:45 Pm",
  ];
  @override
  Widget build(BuildContext context) {
    // SafeArea(top: true,chil,)

    return Scaffold(
      backgroundColor: Color(ColorConstants.notificationbackground),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 10, right: 14, top: 52, bottom: 10),
        child: Container(
          height: 381,
          width: MediaQuery.of(context).size.width * 1,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(ColorConstants.homecard),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    TextConstants.notitext,
                    style: TextStyle(
                      fontFamily: 'Spartan',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(ColorConstants.btnTextColor),
                    ),
                  ),
                  trailing: CircleAvatar(
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
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => ListTile(
                    title: Text(
                      noti[index],
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Color(ColorConstants.btnTextColor),
                          fontFamily: 'Nunito'),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 18,
                        ),
                        Text(
                          notisub[index],
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: Color(ColorConstants.notificationtext),
                              fontFamily: 'Nunito'),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          notitime[index],
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: Color(ColorConstants.notificationtext),
                              fontFamily: 'Nunito'),
                        ),
                      ],
                    ),
                    trailing: CircleAvatar(
                      backgroundColor: Color(ColorConstants.commonBorder),
                      child: Image.asset("assets/images/notification.png"),
                    ),
                    textColor: Color(ColorConstants.notificationtext),
                  ),
                  itemCount: 3,
                ),
                ListTile(
                  title: Text(
                    TextConstants.notitext1,
                    style: TextStyle(
                      fontFamily: 'Spartan',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(ColorConstants.btnTextColor),
                    ),
                  ),
                  trailing: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: Image.asset('assets/images//arrow.png')),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
