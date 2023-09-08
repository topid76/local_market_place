// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class RegistrationPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.all(15),
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 30.0,
              )),
          Padding(
            padding: EdgeInsets.fromLTRB(
              20,
              10,
              0,
              5,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Barangay',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter Barangay'),
                    )),
                Text(
                  'Zone or Street',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter Zone or Street'),
                    )),
                Text(
                  'ZIP code',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter Zip code'),
                    )),
                Text('Valid ID',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w300)),
                Align(
                  alignment: Alignment.center,
                  child: TextButton(
                      style: TextButton.styleFrom(
                        fixedSize: const Size(340, 40),
                        backgroundColor: Colors.blue,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                      ),
                      onPressed: null,
                      child: Text(
                        'Valid ID',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        textAlign: TextAlign.center,
                      )),
                ),
                SizedBox(height: 69),
                Align(
                  alignment: Alignment.center,
                  child: TextButton(
                      style: TextButton.styleFrom(
                        fixedSize: const Size(300, 40),
                        backgroundColor: Colors.green,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                      ),
                      onPressed: null,
                      child: Text(
                        'Register',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        textAlign: TextAlign.center,
                      )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
