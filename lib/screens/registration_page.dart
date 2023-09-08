// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class RegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                textAlign: TextAlign.center,
                'Sign up',
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
            ],
          ),
          SizedBox(height: 20),
          Column(
            children: [
              Text(
                'Username',
                style: TextStyle(fontSize: 15),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: 'Username'),
                  )),
              Text(
                'First Name ',
                style: TextStyle(fontSize: 15),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: 'First Name'),
                  )),
              Text(
                'Last Name',
                style: TextStyle(fontSize: 15),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: 'Last Name'),
                  )),
              Text(
                textAlign: TextAlign.left,
                'Email',
                style: TextStyle(fontSize: 15),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: 'Email'),
                  )),
              Text(
                'Password',
                style: TextStyle(fontSize: 15),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: 'Password'),
                  )),
              Text(
                'Phone Number',
                style: TextStyle(fontSize: 15),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter Phone Number '),
                  )),
              Text('Profile Picture',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300)),
              TextButton(
                  style: TextButton.styleFrom(
                    fixedSize: const Size(340, 40),
                    backgroundColor: Colors.blue,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                  ),
                  onPressed: null,
                  child: Text(
                    'Upload Picture',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ))
            ],
          ),
          SizedBox(height: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Align(
                alignment: Alignment.bottomRight,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextButton(
                    style: TextButton.styleFrom(
                      fixedSize: const Size(120, 40),
                      backgroundColor: Colors.green,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                    ),
                    onPressed: null,
                    child: const Text('Next',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white))),
              )
            ],
          ),
        ],
      ),
    ));
  }
}
