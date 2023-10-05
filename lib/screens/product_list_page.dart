import 'package:flutter/material.dart';
import 'package:local_marketplace/screens/product_view_page.dart';
import 'package:local_marketplace/screens/widget/my_product.dart';

class ProductListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("My Products"),
            bottom: TabBar(tabs: [
              Text(
                "Live",
                style: TextStyle(fontSize: 18),
              ),
              Text("Stocks")
            ]),
          ),
          extendBodyBehindAppBar: false,
          body: TabBarView(children: [
            MyProduct(
                image:
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e3/Oranges_-_whole-halved-segment.jpg/330px-Oranges_-_whole-halved-segment.jpg",
                productName: "Product Name",
                productPrice: 1000,
                stocks: 12),
            ProductViewPage()
          ]),
        ));
  }
}
