import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "What are you ?",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
          ),
          //space
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                  style: TextButton.styleFrom(
                    fixedSize: const Size(120, 100),
                    backgroundColor: Color(0xff655E5E),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                  ),
                  onPressed: null,
                  child: const Text("BUYER",
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Colors.white))),
              TextButton(
                  style: TextButton.styleFrom(
                    fixedSize: const Size(120, 100),
                    backgroundColor: Color(0xff655E5E),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                  ),
                  onPressed: null,
                  child: const Text("SELLER",
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)))
            ],
          ),
        ],
      ),
    );
  }
}
