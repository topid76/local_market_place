import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/logo.jpg",
                height: 150,
              ),
            ],
          ),
          SizedBox(height: 30),
          const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Username or Email",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900)),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter Username or Email'),
                  )),
              SizedBox(height: 20),
              Text("Password",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900)),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter Password'),
                  )),
            ],
          ),
          Column(
            children: [
              TextButton(
                  style: TextButton.styleFrom(
                    fixedSize: const Size(120, 40),
                    backgroundColor: Colors.blue,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                  ),
                  onPressed: null,
                  child: const Text("Login",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white))),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Dont have an account?',
                style: TextStyle(color: Colors.black.withOpacity(0.5)),
              ),
              const TextButton(
                  onPressed: null,
                  child: Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.black),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
