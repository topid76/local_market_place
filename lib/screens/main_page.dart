import 'package:flutter/material.dart';
import 'package:local_marketplace/drawer/drawer.dart';
import 'package:local_marketplace/screens/bottom_bar.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: Align(
              alignment: Alignment.center,
              child: Text("M A R K E T P L A C E"),
            ),
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.post_add,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          floatingActionButton: Container(
            decoration: const BoxDecoration(shape: BoxShape.circle),
            child: FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.add),
            ),
          ),
          endDrawer: Drawer(child: DrawerPage()),
          bottomNavigationBar: BottomBarPage(),
          body: Column(),
        ));
  }
}
