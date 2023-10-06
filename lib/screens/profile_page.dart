import 'package:flutter/material.dart';
import 'package:local_marketplace/bottombar/bottom_bar.dart';
import 'package:local_marketplace/models/user/user.dart';
import 'package:local_marketplace/notifiers/app_notifier.dart';
import 'package:local_marketplace/routes/constants.dart';
import 'package:local_marketplace/screens/widget/my_profile.dart';

import 'package:provider/provider.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed(MainRoute);
          },
          icon: Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(SettingsRoute);
            },
            icon: Icon(Icons.settings),
            iconSize: 30,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Consumer<AppNotifier>(
              builder: (_, appNotifier, __) {
                User user = appNotifier.currentUser;
                return MyProfile(
                    profile:
                        "https://www.nylabone.com/-/media/project/oneweb/nylabone/images/dog101/activities-fun/10-great-small-dog-breeds/maltese-portrait.jpg",
                    fullName: user.fullName,
                    address: user.address,
                    phoneNumber: user.phoneNumber);
              },
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
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            )),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "View",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
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
                            onPressed: () {
                              Navigator.of(context)
                                  .pushNamed(ShopRegistrationRoute);
                            },
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
                              Icons.location_on_rounded,
                              size: 30,
                              color: Colors.black,
                            )),
                        TextButton(
                          onPressed: () {},
                          child: Text("Address",
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
      ),
      bottomNavigationBar: BottomBarPage(),
    );
  }
}
