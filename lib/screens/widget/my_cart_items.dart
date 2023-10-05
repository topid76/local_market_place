import 'package:flutter/material.dart';

class MyCartItems extends StatelessWidget {
  final String image;
  final bool value;
  final String productName;
  final void Function(bool?) onChanged;
  final String productPrice;
  final VoidCallback onPressedMinus;
  final int counter;
  final VoidCallback onPressedAdd;

  MyCartItems(
      {required this.image,
      required this.value,
      required this.onChanged,
      required this.productName,
      required this.productPrice,
      required this.onPressedMinus,
      required this.counter,
      required this.onPressedAdd});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.black54)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Checkbox(value: value, onChanged: onChanged),
          Image(
            image: NetworkImage(image),
            height: 100,
            width: 100,
            fit: BoxFit.cover,
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  productName,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(productPrice),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: onPressedMinus,
                        icon: Icon(
                          Icons.remove,
                          size: 20,
                        )),
                    Text(counter.toString()),
                    IconButton(
                        onPressed: onPressedAdd,
                        icon: Icon(
                          Icons.add,
                          size: 20,
                        ))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
