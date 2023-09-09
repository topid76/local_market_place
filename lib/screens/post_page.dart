import 'package:flutter/material.dart';
import 'package:local_marketplace/screens/widget/my_post_card.dart';

class PostPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: GridView.count(
      scrollDirection: Axis.vertical,
      childAspectRatio: 4 / 3,
      crossAxisCount: 1,
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 20,
      mainAxisSpacing: 30,
      primary: false,
      children: [
        MyPostCard(
          profilePicture:
              'https://static01.nyt.com/images/2021/09/14/science/07CAT-STRIPES/07CAT-STRIPES-mediumSquareAt3X-v2.jpg',
          displayName: 'Jay Kim Lusing',
        )
      ],
    ));
  }
}
