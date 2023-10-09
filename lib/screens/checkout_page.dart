import 'package:flutter/material.dart';
import 'package:local_marketplace/screens/widget/my_button.dart';
import 'package:local_marketplace/screens/widget/my_checkout_items.dart';

import 'package:local_marketplace/common/dependency_locator.dart';
import 'package:local_marketplace/notifiers/app_notifier.dart';
import 'package:provider/provider.dart';

class CheckOutPage extends StatefulWidget {
  State<StatefulWidget> createState() => _CheckOutPageState();
}

class _CheckOutPageState extends State<CheckOutPage> {
  String selectedOption = '';
  DateTime selectedDate = DateTime.now();
  TextEditingController locationController = TextEditingController();

  int count = 0;
  double product_price = 123;

  String? dropDownProvinceValue;
  String? dropDownMunCityValue;
  String? dropDownBarangayValue;
  @override
  void initState() {
    getIt<AppNotifier>().getProvince();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkout"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyCheckOut(
              shopName: "ShopName",
              onPressed: () {},
              image:
                  "https://farm8.staticflickr.com/7564/15288468564_504ee78b18_c.jpg",
              productName: 'Product Nameasdasdasdasdasdasdasdasdasdasdasd',
              productPrice: 12.2,
              counter: 12,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Select Transaction Option:",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                  ),
                  ListTile(
                    title: Text(
                      "Meet Up",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    leading: Radio(
                      value: "Meet Up",
                      groupValue: selectedOption,
                      onChanged: (dynamic value) {
                        setState(() {
                          selectedOption = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "Delivery",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    leading: Radio(
                      value: "Delivery",
                      groupValue: selectedOption,
                      onChanged: (dynamic value) {
                        setState(() {
                          selectedOption = value;
                        });
                      },
                    ),
                  ),
                  if (selectedOption == "Meet Up")
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Select Date:",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 8),
                        InkWell(
                          onTap: () async {
                            final selectedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime.now(),
                              lastDate: DateTime(2030),
                            );
                            if (selectedDate != null) {
                              setState(() {
                                this.selectedDate = selectedDate;
                              });
                            }
                          },
                          child: Row(
                            children: [
                              Icon(Icons.calendar_today),
                              SizedBox(width: 8),
                              Text(
                                "${selectedDate.toLocal()}".split(' ')[0],
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          "Enter Location:",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 8),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Province"),
                            Container(
                              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey.shade300)),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(child: Consumer<AppNotifier>(
                                      builder: (_, appNotifier, __) {
                                        return DropdownButton<String>(
                                            value: dropDownProvinceValue,
                                            isExpanded: true,
                                            underline: Container(),
                                            items: appNotifier.province
                                                .map((data) => DropdownMenuItem(
                                                      child: Text(data.name),
                                                      value: data.code,
                                                    ))
                                                .toList(),
                                            onChanged: (String? value) {
                                              setState(() {
                                                dropDownProvinceValue = value;
                                              });
                                              // call another api
                                              appNotifier
                                                  .getMunCityByProvince(value!);
                                              print(appNotifier);
                                            });
                                      },
                                    ))
                                  ]),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("City/Municipality"),
                                Container(
                                  padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey.shade300)),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(child: Consumer<AppNotifier>(
                                          builder: (_, appNotifier, __) {
                                            return DropdownButton<String>(
                                                value: dropDownMunCityValue,
                                                isExpanded: true,
                                                underline: Container(),
                                                items: appNotifier.munCity
                                                    .map((data) =>
                                                        DropdownMenuItem(
                                                          child:
                                                              Text(data.name),
                                                          value: data.code,
                                                        ))
                                                    .toList(),
                                                onChanged: (
                                                  String? value,
                                                ) {
                                                  setState(() {
                                                    dropDownMunCityValue =
                                                        value;
                                                  });
                                                  //call another api
                                                  appNotifier
                                                      .getBarangayByCityOrMunicipality(
                                                          value!);
                                                  print(appNotifier);
                                                });
                                          },
                                        ))
                                      ]),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Province"),
                                Container(
                                  padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey.shade300)),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(child: Consumer<AppNotifier>(
                                          builder: (_, appNotifier, __) {
                                            return DropdownButton<String>(
                                                value: dropDownBarangayValue,
                                                isExpanded: true,
                                                underline: Container(),
                                                items: appNotifier.barangay
                                                    .map((data) =>
                                                        DropdownMenuItem(
                                                          child:
                                                              Text(data.name),
                                                          value: data.code,
                                                        ))
                                                    .toList(),
                                                onChanged: (
                                                  String? value,
                                                ) {
                                                  setState(() {
                                                    dropDownBarangayValue =
                                                        value;
                                                  });
                                                  //call another api
                                                });
                                          },
                                        ))
                                      ]),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: locationController,
                          decoration: InputDecoration(
                            hintText: "Enter your meet-up/delivery location",
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ],
                    ),
                  // Add more fields for the "Delivery" option if needed
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Order Total ($count)",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "P ",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Text(
                        "Total Payment:",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "P",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.amber),
                      )
                    ],
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        border: Border.all(color: Colors.black)),
                    child: MyButton(
                      onPressed: () {},
                      label: "Place Order",
                      style: TextStyle(color: Colors.white),
                      backgroundColor: Colors.orangeAccent,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
