import 'package:flutter/material.dart';
import 'package:local_marketplace/common/constants.dart';
import 'package:local_marketplace/screens/products_list_screen/products_list_screen.dart';

class MainScreen extends StatefulWidget {
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  int pageIndex = 0;

  final pages = [
    ProductsListScreen(),
    const Text("page 2"),
    const Text("page 3"),
    const Text("page 4"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 20,
              ),
              Image.asset(
                logoPng,
                height: 85,
              )
            ],
          )),
      body: pages[pageIndex],
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.fromLTRB(43, 18, 43, 24),
        decoration: const BoxDecoration(
            border: Border(top: BorderSide(color: Colors.grey, width: 0.8))),
        child: Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    pageIndex = 0;
                  });
                },
                child: buildBottomBarItem(Icons.home_outlined, "Home", 0),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    pageIndex = 1;
                  });
                },
                child: buildBottomBarItem(Icons.search_outlined, "Browse", 1),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    pageIndex = 2;
                  });
                },
                child:
                    buildBottomBarItem(Icons.shopping_cart_outlined, "Cart", 2),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    pageIndex = 3;
                  });
                },
                child: buildBottomBarItem(Icons.person_outline, "Profile", 3),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBottomBarItem(IconData icon, String name, int index) {
    final Color color =
        pageIndex == index ? const Color(0xff03A696) : Colors.black;

    return Container(
      height: 21,
      width: 21,
      child: Icon(
        icon,
        color: color,
      ),
    );
  }
}
