import 'package:flutter/material.dart';
import 'package:local_marketplace/screens/widget/my_button.dart';
import 'package:local_marketplace/screens/widget/my_radio.dart';
import 'package:local_marketplace/screens/widget/my_switch.dart';
import 'package:local_marketplace/screens/widget/my_text_input.dart';

class SellerRegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.close,
              size: 30,
              color: Colors.black,
            ),
          ),
          title: Text("Shop Registration"),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(10, 80, 10, 0),
                child: MyTextInput(
                  label: "Shop Name",
                  prefixIcon: Icons.store,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 50, 10, 0),
                child: MyTextInput(
                  label: "Pick Up Address",
                  prefixIcon: Icons.location_on_outlined,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                child: MyTextInput(
                  label: "Email Address",
                  prefixIcon: Icons.email_rounded,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                child: MyTextInput(
                  label: "Phone Number",
                  prefixIcon: Icons.contact_page_outlined,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Settings:",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 123, 118, 118)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Label As: ",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                    foregroundColor: Colors.black45,
                                    backgroundColor: Colors.amberAccent),
                                child: Text(
                                  "Work",
                                  style: TextStyle(color: Colors.black),
                                )),
                            Padding(
                              padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                              child: TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                      foregroundColor: Colors.black45,
                                      backgroundColor: Colors.amberAccent),
                                  child: Text(
                                    "Home",
                                    style: TextStyle(color: Colors.black),
                                  )),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Set as Default Address",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        MySwitch(value: false, onChanged: (bool newValue) {})
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Set as Pick up Address",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        MySwitch(value: true, onChanged: (bool newValue) {})
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 30, 15, 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 300,
                      height: 50,
                      child: MyButton(
                        onPressed: () {},
                        label: "Next",
                        backgroundColor: Colors.blueAccent,
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        )));
  }
}
