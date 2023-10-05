import 'package:flutter/material.dart';
import 'package:local_marketplace/screens/widget/my_cart_items.dart';

class ShoppingCartPage extends StatefulWidget {
  State<StatefulWidget> createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState extends State<ShoppingCartPage> {
  bool shopCheckBox = false;
  int _counter = 0;
  bool isEditing = false;
  double _itemsPosition = 0.0;
  void _increment() {
    setState(() {
      _counter++;
    });
  }

  void _decrement() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  void toggleEdit() {
    setState(() {
      isEditing = !isEditing;
      if (isEditing) {
        _itemsPosition = 0.0; // Set the desired width for the edit panel.
      } else {
        _itemsPosition = 0.0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text("Shopping Cart"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black38)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Transform.scale(
                          scale: 1.3,
                          child: Checkbox(
                            value: shopCheckBox,
                            onChanged: (dynamic value) {
                              setState(() {
                                shopCheckBox = value ?? false;
                              });
                            },
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Shop Name",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.black87),
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              toggleEdit();
                            },
                            child: Text(
                              isEditing ? "Done" : "Edit",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      transform:
                          Matrix4.translationValues(_itemsPosition, 0, 0),
                      child: Container(
                        child: Row(
                          children: [
                            Expanded(
                              child: MyCartItems(
                                image:
                                    "https://images.pexels.com/photos/90946/pexels-photo-90946.jpeg?cs=srgb&dl=pexels-math-90946.jpg&fm=jpg",
                                value: false,
                                onChanged: (dynamic value) {},
                                productName: 'Product Nameasdasdasdasdasdasd',
                                productPrice: 'Product Price',
                                counter: _counter,
                                onPressedAdd: _increment,
                                onPressedMinus: _decrement,
                              ),
                            ),
                            isEditing
                                ? Container(
                                    decoration: BoxDecoration(
                                        color: Colors.orangeAccent),
                                    child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Delete",
                                        style: TextStyle(color: Colors.white70),
                                      ),
                                    ),
                                  )
                                : SizedBox(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
