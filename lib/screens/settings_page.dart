import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0)),
              Text(
                "My Accounts",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromARGB(255, 241, 164, 47),
                      ),
                      color: Color.fromARGB(255, 241, 164, 47)),
                  child: Row(
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Account Settings",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w300),
                          ))
                    ],
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Container(
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: Color.fromARGB(255, 241, 164, 47)),
                      color: Color.fromARGB(255, 241, 164, 47)),
                  child: Row(
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Address",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w300),
                          ))
                    ],
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Container(
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: Color.fromARGB(255, 241, 164, 47)),
                      color: Color.fromARGB(255, 241, 164, 47)),
                  child: Row(
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Premium Details",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w300),
                          ))
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: Row(
                  children: [
                    Text(
                      "Privacy",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Container(
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: Color.fromARGB(255, 241, 164, 47)),
                      color: Color.fromARGB(255, 241, 164, 47)),
                  child: Row(
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Reported User",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w300),
                          ))
                    ],
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Container(
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: Color.fromARGB(255, 241, 164, 47)),
                      color: Color.fromARGB(255, 241, 164, 47)),
                  child: Row(
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Block User",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w300),
                          ))
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      style: TextButton.styleFrom(
                        fixedSize: const Size(350, 50),
                        backgroundColor: Colors.red,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Delete Account",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 15),
                      ))
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      style: TextButton.styleFrom(
                        fixedSize: const Size(350, 50),
                        backgroundColor: Colors.blueAccent,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Delete Account",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 15),
                      ))
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
