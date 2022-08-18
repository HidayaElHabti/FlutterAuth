import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_svg/svg.dart';

import '../../../Components/rounded_button.dart';
import '../../Login/login_screen.dart';
import '../../Signup/signup_screen.dart';
import 'background.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              const Text("WELCOME TO EDU",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                height: size.height * 0.03,
              ),
              SvgPicture.asset("assets/icons/chat.svg",
                  height: size.height * 0.45),
              SizedBox(
                height: size.height * 0.05,
              ),
              RoundedButton(
                text: "LOGIN",
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const LoginScreen();
                  }));
                },
              ),
              RoundedButton(
                text: "REGISTER",
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const SignupScreen();
                  }));
                },
                color: kPrimaryLightColor,
                textColor: kPrimaryColor,
              ),
            ]),
      ),
    );
  }
}
