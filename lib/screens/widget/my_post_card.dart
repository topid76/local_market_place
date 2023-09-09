import 'package:flutter/material.dart';

class MyPostCard extends StatelessWidget {
  final String profilePicture;
  final String displayName;
  MyPostCard({required this.profilePicture, required this.displayName});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(15),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(profilePicture),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
                  child: Text(
                    displayName,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
