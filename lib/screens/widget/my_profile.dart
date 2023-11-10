import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  final String? profile;
  final String? fullName;
  final String? address;
  final String? phoneNumber;
  final VoidCallback? onPressed;

  MyProfile(
      {this.profile,
      this.fullName,
      this.address,
      this.phoneNumber,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color.fromARGB(153, 196, 239, 222)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              Padding(    
                padding: EdgeInsets.all(15),
                child: CircleAvatar(
                  backgroundImage: "$profile".isNotEmpty
                      ? NetworkImage("$profile")
                      : NetworkImage(
                          "https://thinksport.com.au/wp-content/uploads/2020/01/avatar-.jpg"),
                  radius: 80,
                ),
              ),
              Positioned(
                bottom: 17,
                right: 15,
                child: IconButton(
                  onPressed: onPressed,
                  icon: Icon(
                    Icons.add_a_photo, // Your add icon
                    color: Colors.black, // Icon color
                    size: 30, // Icon size
                  ),
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
                  style: TextStyle(
                    fontSize: 12,
                    overflow: TextOverflow.ellipsis,
                  ),
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
