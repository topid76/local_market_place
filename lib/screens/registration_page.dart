// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:local_marketplace/screens/widget/my_button.dart';
import 'package:local_marketplace/screens/widget/my_text_input.dart';

class RegistrationPage extends StatelessWidget {
  final Widget svg = SvgPicture.asset("assets/svgs/signup.svg",
      height: 100,
      alignment: Alignment.topRight,
      colorFilter: ColorFilter.mode(Colors.red, BlendMode.srcIn),
      semanticsLabel: 'Sign Up');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(5),
                child: svg,
              ),
              Text(
                "Get On Board !",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Text(
                "Create your profile to start your journey",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 50,
                    child: MyTextInput(
                      prefixIcon: Icons.email,
                      label: "Email",
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 50,
                    child: MyTextInput(
                      prefixIcon: Icons.account_box,
                      label: "Full Name",
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 50,
                    child: MyTextInput(
                      prefixIcon: Icons.password,
                      label: "Password",
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyButton(
                    onPressed: () {},
                    label: "Sign Up",
                  )
                ],
              )
            ],
          ),
        ),
      ],
    ));
  }
}
