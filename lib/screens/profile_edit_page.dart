import 'package:flutter/material.dart';
import 'package:local_marketplace/routes/constants.dart';
import 'package:local_marketplace/screens/widget/my_button.dart';
import 'package:local_marketplace/screens/widget/my_datePicker.dart';

import 'package:local_marketplace/screens/widget/my_radio.dart';
import 'package:local_marketplace/screens/widget/my_text_input.dart';

import '../notifiers/app_notifier.dart';
import 'package:local_marketplace/common/dependency_locator.dart';
import 'package:provider/provider.dart';

enum Gender { male, female }

class ProfileEditPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ProfileEditPageState();
}

class _ProfileEditPageState extends State<ProfileEditPage> {
  Gender selectedGender = Gender.male;

  String? dropDownProvinceValue;
  String? dropDownMunCityValue;
  String? dropDownBarangayValue;

  final TextEditingController fullname = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController phoneNumber = TextEditingController();

  @override
  void initState() {
    getIt<AppNotifier>().getProvince();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(ProfileRoute);
            },
            icon: Icon(Icons.arrow_back),
          ),
          title: Text(
            "Complete your Profile",
            style: TextStyle(fontSize: 18),
          )),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Basic Information",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.blueGrey[300]),
                ),
                SizedBox(
                  height: 10,
                ),
                MyTextInput(
                  label: "Full name",
                  prefixIcon: Icons.person,
                  textController: fullname,
                ),
                SizedBox(
                  height: 10,
                ),
                MyTextInput(
                  label: "Email",
                  prefixIcon: Icons.email,
                  textController: email,
                ),
                SizedBox(
                  height: 10,
                ),
                MyTextInput(
                  label: "Contact Number",
                  prefixIcon: Icons.call,
                  textController: phoneNumber,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Address",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.blueGrey[300]),
                ),
                SizedBox(
                  height: 15,
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
                SizedBox(
                  height: 18,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Gender:",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueGrey[300]),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MyRadio(
                            label: "Male",
                            value: Gender.male,
                            groupValue: selectedGender,
                            onChanged: (dynamic value) {
                              setState(() {
                                selectedGender = value;
                                print(value);
                              });
                            },
                            style: TextStyle(fontSize: 18)),
                        MyRadio(
                            label: "Female",
                            value: Gender.female,
                            groupValue: selectedGender,
                            onChanged: (dynamic value) {
                              print(value);
                              setState(() {
                                selectedGender = value;
                              });
                            },
                            style: TextStyle(fontSize: 18)),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 50,
                          width: 250,
                          child: MyButton(
                            onPressed: () {},
                            label: "Save",
                            style: TextStyle(color: Colors.white),
                            backgroundColor: Colors.blue.shade400,
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            )),
      ),
    );
  }
}
