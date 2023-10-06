import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  final String profile;
  final String? fullName;
  final String? address;
  final String? phoneNumber;

  MyProfile(
      {required this.profile, this.fullName, this.address, this.phoneNumber});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(color: Color.fromARGB(153, 196, 239, 222)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(15),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(profile),
                  radius: 80,
                ),
              ),
            ],
          ),
          Text(
            "$fullName",
            style: TextStyle(fontSize: 22),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  "$address",
                  style:
                      TextStyle(fontSize: 12, overflow: TextOverflow.ellipsis),
                ),
              ),
              Expanded(
                child: Text(
                  "$phoneNumber",
                  style: TextStyle(fontSize: 12),
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
