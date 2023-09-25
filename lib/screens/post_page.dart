import 'package:flutter/material.dart';
import 'package:local_marketplace/screens/widget/my_icon_button.dart';
import 'package:local_marketplace/screens/widget/my_post_card.dart';

class PostPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: GridView.count(
      scrollDirection: Axis.vertical,
      childAspectRatio: 5 / 4,
      crossAxisCount: 1,
      padding: EdgeInsets.all(5),
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      primary: false,
      children: [
        MyPostCard(
          profilePicture:
              'https://static01.nyt.com/images/2021/09/14/science/07CAT-STRIPES/07CAT-STRIPES-mediumSquareAt3X-v2.jpg',
          displayName: 'Jay Kim Lusing',
          posted_text:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
          favorite_button: () {},
          favorite_icon: Icon(
            Icons.favorite_border,
            size: 30,
          ),
          share_button: () {},
          share_icon: Icon(
            Icons.comment_outlined,
            size: 30,
          ),
        ),
        MyPostCard(
          profilePicture:
              'https://static01.nyt.com/images/2021/09/14/science/07CAT-STRIPES/07CAT-STRIPES-mediumSquareAt3X-v2.jpg',
          displayName: 'Jay Kim Lusing',
          posted_text:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
          favorite_button: () {},
          favorite_icon: Icon(
            Icons.favorite_border,
            size: 30,
          ),
          share_button: () {},
          share_icon: Icon(
            Icons.comment_outlined,
            size: 30,
          ),
        ),
        MyPostCard(
          profilePicture:
              'https://static01.nyt.com/images/2021/09/14/science/07CAT-STRIPES/07CAT-STRIPES-mediumSquareAt3X-v2.jpg',
          displayName: 'Jay Kim Lusing',
          posted_text:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
          favorite_button: () {},
          favorite_icon: Icon(
            Icons.favorite_border,
            size: 25,
          ),
          share_button: () {},
          share_icon: Icon(
            Icons.comment_outlined,
            size: 25,
          ),
        ),
        MyPostCard(
          profilePicture:
              'https://static01.nyt.com/images/2021/09/14/science/07CAT-STRIPES/07CAT-STRIPES-mediumSquareAt3X-v2.jpg',
          displayName: 'Jay Kim Lusing',
          posted_text:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
          favorite_button: () {},
          favorite_icon: Icon(
            Icons.favorite_border,
            size: 30,
          ),
          share_button: () {},
          share_icon: Icon(
            Icons.comment_outlined,
            size: 30,
          ),
        ),
      ],
    ));
  }
}
