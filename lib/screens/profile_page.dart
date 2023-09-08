import 'package:flutter/material.dart';
import 'package:local_marketplace/screens/bottom_bar.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: Icon(
                  Icons.settings,
                  size: 30,
                ),
                onPressed: () {},
              )
            ],
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                        "assets/images/profile.jpg",
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 5, 0, 3),
                          child: Text("Opol Tourism",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 25)),
                        ),
                        Padding(
                            padding: EdgeInsets.fromLTRB(5, 2, 0, 2),
                            child: Text(
                              "Opol Misamis Oriental",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 15),
                            )),
                        Padding(
                            padding: EdgeInsets.fromLTRB(5, 2, 0, 2),
                            child: Text(
                              "09## ### ####",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 15),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      color: Color.fromARGB(255, 241, 164, 47)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "My Purchase",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          )),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "View",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          )),
                    ],
                  ),
                ),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      color: Color.fromARGB(255, 241, 164, 47)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.delivery_dining,
                                size: 35,
                                color: Colors.black,
                              )),
                          Text(
                            "To Ship",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.call_received,
                                size: 35,
                                color: Colors.black,
                              )),
                          Text(
                            "To Received",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.star,
                                size: 35,
                                color: Colors.black,
                              )),
                          Text(
                            "To Rate",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(),
                      color: Color.fromARGB(255, 241, 164, 47)),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.store_rounded,
                            size: 30,
                            color: Colors.black,
                          )),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Start Selling",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
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
                      border: Border.all(),
                      color: Color.fromARGB(255, 241, 164, 47)),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.star,
                            size: 30,
                            color: Colors.black,
                          )),
                      TextButton(
                        onPressed: () {},
                        child: Text("My Rating",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                      ),
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
                      border: Border.all(),
                      color: Color.fromARGB(255, 241, 164, 47)),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.notes_sharp,
                            size: 30,
                            color: Colors.black,
                          )),
                      TextButton(
                        onPressed: () {},
                        child: Text("View Report",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomBarPage(),
    );
  }
}
