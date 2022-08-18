import 'package:flutter/material.dart';
import 'package:flutter_auth/Components/already_have_an_account_check.dart';
import 'package:flutter_auth/Components/rounded_button.dart';
import 'package:flutter_auth/Components/rounded_input_field.dart';
import 'package:flutter_auth/Components/rounded_password_field.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_svg/svg.dart';

import 'backgroud.dart';
import 'or_divider.dart';
import 'social_icon.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("SIGNUP", style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: size.height * 0.03),
          SvgPicture.asset("assets/icons/signup.svg",
              height: size.height * 0.3),
          RoundedInputField(hintText: "Your Email", onChanged: (value) {}),
          RoundedPasswordField(onChanged: (value) {}),
          RoundedButton(text: "SIGNUP", press: () {}),
          SizedBox(height: size.height * 0.03),
          AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginScreen();
                }));
              }),
          const OrDivider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialIcon(assetSrc: "assets/icons/facebook.svg", press: () {}),
              SocialIcon(assetSrc: "assets/icons/twitter.svg", press: () {}),
              SocialIcon(assetSrc: "assets/icons/google-plus.svg", press: () {})
            ],
          )
        ],
      ),
    ));
  }
}
