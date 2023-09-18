import 'package:flutter/material.dart';
import 'package:local_marketplace/screens/widget/my_button.dart';
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
          title: Text("Seller Registration"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
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
              padding: EdgeInsets.fromLTRB(15, 30, 15, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 50,
                    width: 150,
                    child: MyButton(
                      onPressed: () {},
                      label: "Cancel",
                      backgroundColor: Colors.white60,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 50,
                    child: MyButton(
                      onPressed: () {},
                      label: "Submit",
                      backgroundColor: Colors.blueAccent,
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            )
          ],
        )));
  }
}
