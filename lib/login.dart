import 'package:chainpay/tab_bar.dart';
import 'package:chainpay/text_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'color_const.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width * 1,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/login.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 28, right: 28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 111,
                ),
                Text(
                  TextConstants.loginTxt,
                  style: TextStyle(
                      fontFamily: 'Nunito',
                      color: Color(
                        ColorConstants.btnTextColor,
                      ),
                      fontWeight: FontWeight.w800,
                      fontSize: 25),
                ),
                Image.asset("assets/images/login_vector.png"),
                SizedBox(
                  height: 60,
                ),
                IntlPhoneField(
                  flagsButtonPadding: EdgeInsets.only(left: 14),
                  dropdownTextStyle: TextStyle(
                      color: Color(ColorConstants.btnColor),
                      fontSize: 15,
                      fontWeight: FontWeight.w700),
                  showDropdownIcon: false,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 67),
                    filled: true,
                    fillColor: Color(ColorConstants.inputFillColor),
                    hintText: TextConstants.loginTxt3,
                    hintStyle: TextStyle(
                      fontFamily: "spartan",
                      fontWeight: FontWeight.w700,
                      color: Color(0xff858891),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(),
                    ),
                  ),
                  initialCountryCode: 'PK',
                  showCountryFlag: false,
                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const TabBaar()),
                    );
                  },
                  child: Container(
                    child: Center(
                      child: Text(
                        TextConstants.loginBtnTxt,
                        style: TextStyle(
                            fontFamily: 'spartan',
                            color: Color(ColorConstants.btnTextColor),
                            fontSize: 15,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    height: 46,
                    width: MediaQuery.of(context).size.width * 1,
                    decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(ColorConstants.btnColor),
                    ),
                  ),
                ),
                SizedBox(
                  height: 17,
                ),
                Center(
                  child: Text(
                    TextConstants.loginTxt1,
                    style: TextStyle(
                        color: Color(ColorConstants.paraTxt1),
                        fontFamily: 'Nunito',
                        fontSize: 14),
                  ),
                ),
                SizedBox(
                  height: 9,
                ),
                Center(
                  child: Text(
                    TextConstants.loginTxt2,
                    style: TextStyle(
                        color: Color(ColorConstants.paraTxt1),
                        fontFamily: 'Nunito',
                        fontSize: 11),
                  ),
                ),
                SizedBox(
                  height: 52,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
