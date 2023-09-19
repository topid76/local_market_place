// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:local_marketplace/common/dependency_locator.dart';
import 'package:local_marketplace/notifiers/app_notifier.dart';
import 'package:local_marketplace/screens/shop_registration_page.dart';
import 'package:local_marketplace/screens/widget/my_button.dart';
import 'package:local_marketplace/screens/widget/my_checkbox.dart';
import 'package:local_marketplace/screens/widget/my_inlinebutton.dart';
import 'package:local_marketplace/screens/widget/my_radio.dart';
import 'package:local_marketplace/screens/widget/my_text_input.dart';
import 'package:provider/provider.dart';

class ShopInformationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ShopInformationPageState();
}

class _ShopInformationPageState extends State<ShopInformationPage> {
  String? dropDownValue;
  @override
  void initState() {
    getIt<AppNotifier>().getRegions();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: Text("Shop Information"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(15, 50, 15, 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Seller Type:",
                style: TextStyle(color: Colors.black87, fontSize: 18),
              ),
              MyRadio(
                  label: "Individual",
                  value: true,
                  groupValue: true,
                  onChanged: (bool changeValue) {},
                  style: TextStyle(fontSize: 18)),
              MyRadio(
                  label: "Business",
                  value: true,
                  groupValue: false,
                  onChanged: (bool changeValue) {},
                  style: TextStyle(fontSize: 18)),
              SizedBox(
                height: 25,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Registered Name:",
                    style: TextStyle(fontSize: 18, color: Colors.black87),
                  ),
                  MyTextInput(),
                  Text(
                    "Last Name, First Name(e.g. Dela Cruz, Juan)",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(child: Consumer<AppNotifier>(
                            builder: (_, appNotifier, __) {
                              return DropdownButton<String>(
                                  value: dropDownValue,
                                  isExpanded: true,
                                  underline: Container(),
                                  items: appNotifier.regions
                                      .map((data) => DropdownMenuItem(
                                            child: Text(data.name),
                                            value: data.code,
                                          ))
                                      .toList(),
                                  onChanged: (String? value) {
                                    setState(() {
                                      dropDownValue = value;
                                    });
                                    //call another api
                                  });
                            },
                          ))
                        ]),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Text(
                    "Do you have Taxpayer Identification Number (TIN)?",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  MyRadio(
                      label: "Yes",
                      value: true,
                      groupValue: false,
                      onChanged: (bool changeValue) {},
                      style: TextStyle(fontSize: 18)),
                  MyRadio(
                      label: "No",
                      value: true,
                      groupValue: false,
                      onChanged: (bool changeValue) {},
                      style: TextStyle(fontSize: 18)),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  MyCheckbox(
                    onChanged: (bool) {},
                    value: false,
                  ),
                  Text("I agree to these "),
                  MyInlineButton(text: "Terms and Condition", function: () {})
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 300,
                      height: 50,
                      child: MyButton(
                        onPressed: () {},
                        label: "Next",
                        backgroundColor: Colors.blueAccent,
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
