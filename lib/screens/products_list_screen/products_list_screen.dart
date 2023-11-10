import 'package:flutter/material.dart';
import 'package:local_marketplace/models/category/category.dart';
import 'package:local_marketplace/models/product/product.dart';
import 'package:local_marketplace/notifiers/category/category_notifier.dart';
import 'package:local_marketplace/notifiers/product/product_notifier.dart';
import 'package:provider/provider.dart';

class ProductsListScreen extends StatefulWidget {
  ProductsListScreenState createState() => ProductsListScreenState();
}

class ProductsListScreenState extends State<ProductsListScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 32),
            child: Text(
              "Shop By Categories",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Consumer<CategoryNotifier>(
            builder: (_, data, __) {
              return Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: buildCategoryList(
                    [Category(name: "All", id: "0"), ...data.categories]),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget buildCategoryList(List<Category> categories) {
    print(categories.length);
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.only(left: 28),
        itemBuilder: (_, index) {
          return Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: buildCategoryButton(categories[index].name),
              )
            ],
          );
        });
  }

  Widget buildCategoryButton(String name) {
    return ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
            backgroundColor: const MaterialStatePropertyAll(Color(0xff00AE11)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)))),
        child: Text(
          name,
          style: const TextStyle(color: Colors.white),
        ));
  }

  Widget buildProductList(List<Product> products) {
    return Container();
  }

  Widget buildProductContainer(Product product) {
    return Container();
  }
}
