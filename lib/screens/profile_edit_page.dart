import 'package:flutter/material.dart';

import 'package:local_marketplace/screens/widget/my_radio.dart';
import 'package:local_marketplace/screens/widget/my_text_input.dart';

class ProfileEditPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ProfileEditPageState();
}

class _ProfileEditPageState extends State<ProfileEditPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Complete your Profile")),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Basic Information",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.blueGrey[300]),
                ),
                SizedBox(
                  height: 10,
                ),
                MyTextInput(
                  label: "Full name",
                  prefixIcon: Icons.person,
                ),
                SizedBox(
                  height: 10,
                ),
                MyTextInput(
                  label: "Email",
                  prefixIcon: Icons.email,
                ),
                SizedBox(
                  height: 10,
                ),
                MyTextInput(
                  label: "Address",
                  prefixIcon: Icons.location_on,
                ),
                SizedBox(
                  height: 10,
                ),
                MyTextInput(
                  label: "Contact Number",
                  prefixIcon: Icons.call,
                ),
                SizedBox(
                  height: 18,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Gender:",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueGrey[300]),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MyRadio(
                            label: "Male",
                            value: true,
                            groupValue: false,
                            onChanged: (bool changeValue) {},
                            style: TextStyle(fontSize: 18)),
                        MyRadio(
                            label: "Female",
                            value: true,
                            groupValue: false,
                            onChanged: (bool changeValue) {},
                            style: TextStyle(fontSize: 18)),
                      ],
                    )
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
