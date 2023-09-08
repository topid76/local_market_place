import 'package:flutter/material.dart';

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
            )),
      ),
      body: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 350,
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Shop Name"),
              ),
            )
          ],
        )
      ]),
    ));
  }
}
