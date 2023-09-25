import 'package:flutter/material.dart';
import 'package:local_marketplace/common/dependency_locator.dart';
import 'package:local_marketplace/notifiers/app_notifier.dart';
import 'package:local_marketplace/screens/widget/my_button.dart';
import 'package:local_marketplace/screens/widget/my_radio.dart';
import 'package:local_marketplace/screens/widget/my_switch.dart';
import 'package:local_marketplace/screens/widget/my_text_input.dart';
import 'package:provider/provider.dart';

class SellerRegistrationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SellerRegistrationState();
}

class _SellerRegistrationState extends State<SellerRegistrationPage> {
  bool defaultAddress = false;
  bool pickUpAddress = false;
  String selectedButton = "";

  String? dropDownProvinceValue;
  String? dropDownMunCityValue;
  String? dropDownBarangayValue;

  void _handleButtonPress(String buttonName) {
    setState(() {
      selectedButton = buttonName;
    });
  }

  @override
  void initState() {
    getIt<AppNotifier>().getProvince();
    super.initState();
  }

  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.close,
              size: 30,
              color: Colors.black,
            ),
          ),
          title: Text("Shop Registration"),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                child: MyTextInput(
                  label: "Shop Name",
                  prefixIcon: Icons.store,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                child: MyTextInput(
                  label: "Email Address",
                  prefixIcon: Icons.email_rounded,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                child: MyTextInput(
                  label: "Phone Number",
                  prefixIcon: Icons.contact_page_outlined,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                  child: Text(
                    "Address",
                    style: TextStyle(
                        fontSize: 13,
                        color: Color.fromARGB(255, 123, 118, 118)),
                  )),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Province"),
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
                                      appNotifier.getMunCityByProvince(value!);
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
                              border: Border.all(color: Colors.grey.shade300)),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(child: Consumer<AppNotifier>(
                                  builder: (_, appNotifier, __) {
                                    return DropdownButton<String>(
                                        value: dropDownMunCityValue,
                                        isExpanded: true,
                                        underline: Container(),
                                        items: appNotifier.munCity
                                            .map((data) => DropdownMenuItem(
                                                  child: Text(data.name),
                                                  value: data.code,
                                                ))
                                            .toList(),
                                        onChanged: (
                                          String? value,
                                        ) {
                                          setState(() {
                                            dropDownMunCityValue = value;
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
                              border: Border.all(color: Colors.grey.shade300)),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(child: Consumer<AppNotifier>(
                                  builder: (_, appNotifier, __) {
                                    return DropdownButton<String>(
                                        value: dropDownBarangayValue,
                                        isExpanded: true,
                                        underline: Container(),
                                        items: appNotifier.barangay
                                            .map((data) => DropdownMenuItem(
                                                  child: Text(data.name),
                                                  value: data.code,
                                                ))
                                            .toList(),
                                        onChanged: (
                                          String? value,
                                        ) {
                                          setState(() {
                                            dropDownBarangayValue = value;
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
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Settings:",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 123, 118, 118)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Label As: ",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextButton(
                                onPressed: () {
                                  _handleButtonPress("Work");
                                },
                                style: TextButton.styleFrom(
                                    foregroundColor: Colors.black45,
                                    backgroundColor: selectedButton == "Work"
                                        ? Colors.blueAccent
                                        : Colors.amberAccent),
                                child: Text(
                                  "Work",
                                  style: TextStyle(color: Colors.black),
                                )),
                            Padding(
                              padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                              child: TextButton(
                                  onPressed: () {
                                    _handleButtonPress("Home");
                                  },
                                  style: TextButton.styleFrom(
                                      foregroundColor: Colors.black45,
                                      backgroundColor: selectedButton == "Home"
                                          ? Colors.blueAccent
                                          : Colors.amberAccent),
                                  child: Text(
                                    "Home",
                                    style: TextStyle(color: Colors.black),
                                  )),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Set as Default Address",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        MySwitch(
                            value: defaultAddress,
                            onChanged: (dynamic value) {
                              setState(() {
                                defaultAddress = value;
                              });
                            })
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Set as Pick up Address",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        MySwitch(
                            value: pickUpAddress,
                            onChanged: (dynamic value) {
                              setState(() {
                                pickUpAddress = value;
                              });
                            })
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 30, 15, 0),
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
        )));
  }
}
