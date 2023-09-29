import 'package:flutter/material.dart';
import 'package:local_marketplace/routes/constants.dart';
import 'package:local_marketplace/screens/wholesale_attributes.dart';
import 'package:local_marketplace/screens/widget/my_small_text_input.dart';

class WholeSalePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _WholeSaleState();
}

class _WholeSaleState extends State<WholeSalePage> {
  List<Widget> addFields = [];
  int addField = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(ProductRegistrationRoute);
            },
            icon: Icon(Icons.arrow_back),
          ),
          title: Text("Wholesale"),
          actions: [
            TextButton(
                onPressed: () {},
                child: Text(
                  "Save",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.redAccent),
                ))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Min. Order",
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    " ",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text("Max. Order", style: TextStyle(fontSize: 15)),
                  Text(
                    " ",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text("Unit Price", style: TextStyle(fontSize: 15))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: addFields.length,
                      itemBuilder: (context, index) {
                        return SizedBox(
                            height: 50,
                            child: Row(
                              children: [
                                Expanded(
                                  child: addFields[index],
                                ),
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        addFields.removeAt(index);
                                        print(index);
                                      });
                                    },
                                    icon: Icon(Icons.close_rounded))
                              ],
                            ));
                      })),
              SizedBox(
                height: 20,
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  addField++;
                                  addFields.add(WholeSaleAttributes());
                                });
                              },
                              icon: Icon(
                                Icons.add_circle_outline,
                                size: 35,
                                color: Colors.red,
                              )),
                          TextButton(
                              onPressed: () {
                                setState(() {
                                  addField++;
                                  addFields.add(WholeSaleAttributes());
                                });
                              },
                              child: Text(
                                "Add  Price Tier",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
