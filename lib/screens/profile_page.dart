import 'package:flutter/material.dart';
import 'package:local_marketplace/bottombar/bottom_bar.dart';
import 'package:local_marketplace/screens/widget/my_profile.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(
            Icons.settings,
            size: 40,
          )
        ],
      ),
      body: Column(
        children: [
          MyProfile(
            profile:
                "https://static01.nyt.com/images/2021/09/14/science/07CAT-STRIPES/07CAT-STRIPES-mediumSquareAt3X-v2.jpg",
            fullName: "Jay Kim Lusing",
            address: "Opol Misamis Oriental",
            contactNumber: "0966 296 4893",
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(255, 158, 158, 158)),
                      color: Color.fromARGB(153, 196, 239, 222)),
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
                      color: Color.fromARGB(153, 196, 239, 222)),
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
                      color: Color.fromARGB(153, 196, 239, 222)),
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
                      color: Color.fromARGB(153, 196, 239, 222)),
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
                      color: Color.fromARGB(153, 196, 239, 222)),
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
