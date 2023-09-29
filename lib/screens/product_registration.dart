import 'package:flutter/material.dart';
import 'package:local_marketplace/routes/constants.dart';
import 'package:local_marketplace/screens/widget/my_button.dart';
import 'package:local_marketplace/screens/widget/my_description_text_input.dart';
import 'package:local_marketplace/screens/widget/my_dropdown_button.dart';
import 'package:local_marketplace/screens/widget/my_imag_button.dart';
import 'package:local_marketplace/screens/widget/my_inlinebutton.dart';
import 'package:local_marketplace/screens/widget/my_small_text_input.dart';
import 'package:local_marketplace/screens/widget/my_text_input.dart';

class ProductRegistrationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ProductRegistrationPageState();
}

class _ProductRegistrationPageState extends State<ProductRegistrationPage> {
  List<String> imageUrls = [];

  void addImage(String imageUrl) {
    setState(() {
      imageUrls.add(imageUrl);
    });
  }

  void removeImage(String imageUrl) {
    setState(() {
      imageUrls.remove(imageUrl);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Add Products"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Add Product Image",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Add up to 5 images. First image is your product's cover image that will be highlighted everywhere.",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  overflow: TextOverflow.clip,
                  maxLines: 2,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      MyImageButton(onPressed: () {}),
                    ]),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Product Details",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Select Product Category",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10,
                ),

                //for Drop Downbutton for Category

                SizedBox(
                  height: 30,
                ),
                Text(
                  "Product Name",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10,
                ),
                MyTextInput(
                  hint: "Enter Product Name",
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Product Description",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10,
                ),
                MyDescriptionTextInput(
                  hint: "Enter Product Description",
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Product Price",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10,
                ),
                MyTextInput(
                  hint: "Enter Product Price",
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Stocks",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10,
                ),
                MyTextInput(
                  hint: "Enter Stocks you have",
                ),
                Text(
                  "Note that your stocks is on point",
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white70),
                            color: Color.fromARGB(153, 255, 255, 255)),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.point_of_sale_outlined,
                                  size: 35,
                                  color: Colors.black,
                                )),
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context)
                                      .pushNamed(WholeSaleRoute);
                                },
                                child: Text(
                                  "Wholesale",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 300,
                      height: 50,
                      child: MyButton(
                          backgroundColor: Color.fromARGB(255, 111, 155, 232),
                          onPressed: () {},
                          label: "Submit",
                          style:
                              TextStyle(fontSize: 20, color: Colors.black87)),
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
