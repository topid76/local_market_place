import 'package:flutter/material.dart';
import 'package:local_marketplace/screens/widget/my_reviews.dart';
import 'package:local_marketplace/screens/widget/my_to_rate.dart';

class RatingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("My Rating"),
          bottom: TabBar(tabs: [
            Tab(
              text: "To Rate",
            ),
            Tab(
              text: "My Reviews",
            )
          ]),
        ),
        body: TabBarView(children: [
          MyToRate(
            hasRatings: false,
            image:
                "https://www.nylabone.com/-/media/project/oneweb/nylabone/images/dog101/activities-fun/10-great-small-dog-breeds/maltese-portrait.jpg",
            shopName: "Shop Name",
            status: "Status",
            productImage:
                "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSpH7uUVCuNXC8WHl137Pu1kgksksSgcoixgl0w9B_xNzHsjG9m",
            productName: "Product Name",
            quantity: "23",
            onPressed: () {},
          ),
          MyReview(
            image: "",
            buyerName: "Buyer Name",
            rating: 5,
            comment:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
            onPressed: () {},
          ),
        ]),
      ),
    );
  }
}
