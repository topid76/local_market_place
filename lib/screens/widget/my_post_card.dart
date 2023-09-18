import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:local_marketplace/screens/widget/my_icon_button.dart';

class MyPostCard extends StatelessWidget {
  final String profilePicture;
  final String displayName;
  final String posted_text;

  final VoidCallback favorite_button;
  final favorite_icon;

  final VoidCallback share_button;
  final share_icon;

  String getCurrentDataTime() {
    final now = DateTime.now();
    final formatter = DateFormat('MMM d, h:mm a');
    return formatter.format(now);
  }

  MyPostCard(
      {required this.profilePicture,
      required this.displayName,
      required this.posted_text,
      required this.favorite_button,
      required this.favorite_icon,
      required this.share_button,
      required this.share_icon});

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
                    padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                    child: Column(
                      children: [
                        Text(
                          displayName,
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          getCurrentDataTime(),
                          style:
                              TextStyle(color: Color.fromARGB(255, 75, 74, 74)),
                        )
                      ],
                    ))
              ],
            ),
          ),
          Expanded(
              child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: Text(
                  posted_text,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 23),
                ),
              ),
            ],
          )),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MyIconButton(onPressed: favorite_button, icon: favorite_icon),
              MyIconButton(onPressed: share_button, icon: share_icon)
            ],
          ))
        ],
      ),
    );
  }
}
