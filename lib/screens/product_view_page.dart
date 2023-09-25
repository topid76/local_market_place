import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:local_marketplace/routes/constants.dart';
import 'package:local_marketplace/screens/widget/my_card.dart';

class ProductViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        scrollDirection: Axis.vertical,
        childAspectRatio: 4 / 8,
        crossAxisCount: 2,
        padding: EdgeInsets.all(10),
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        primary: false,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(RegistrationRoute);
            },
            child: myCard(
              img:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSx6b6oNRWVPeoE01PbyMZ5svvqfJFdGz0l-42ECfvP7ttKhQPQBq2ZQSRKuMqluaom9qI&usqp=CAU",
              text: "Strawberry",
              price: 21.09,
              sold: 23.1,
              location: 'Cagayan de Oro',
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(RegistrationRoute);
            },
            child: myCard(
              img:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSx6b6oNRWVPeoE01PbyMZ5svvqfJFdGz0l-42ECfvP7ttKhQPQBq2ZQSRKuMqluaom9qI&usqp=CAU",
              text: "Orage",
              price: 21.09,
              sold: 23.1,
              location: 'Cagayan de Oro',
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(RegistrationRoute);
            },
            child: myCard(
              img:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSx6b6oNRWVPeoE01PbyMZ5svvqfJFdGz0l-42ECfvP7ttKhQPQBq2ZQSRKuMqluaom9qI&usqp=CAU",
              text: "Basket",
              price: 21.09,
              sold: 23.1,
              location: 'Cagayan de Oro',
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(RegistrationRoute);
            },
            child: myCard(
              img: "https://cf.shopee.ph/file/7c571766ada986fef5208314e9c6fa95",
              text: "Bukag",
              price: 21.09,
              sold: 23.1,
              location: 'Cagayan de Oro',
            ),
          ),
          myCard(
            img:
                "https://images.unsplash.com/photo-1550258987-190a2d41a8ba?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8fA%3D%3D&w=1000&q=80",
            text: "Pineapple",
            price: 21.09,
            sold: 23.1,
            location: 'Cagayan de Oro',
          ),
          myCard(
            img:
                "https://5.imimg.com/data5/SELLER/Default/2022/3/ZZ/PW/RZ/36905324/fruits-watermelons.jpg",
            text: "Melon",
            price: 21.09,
            sold: 23.1,
            location: 'Cagayan de Oro',
          ),
          myCard(
            img:
                "https://hips.hearstapps.com/hmg-prod/images/carrot-overhead-group-lined-up-on-old-brown-wooden-royalty-free-image-625009188-1564523268.jpg?crop=0.685xw:0.684xh;0.158xw,0.250xh&resize=980:*",
            text: "Carrots",
            price: 21.09,
            sold: 23.1,
            location: 'Cagayan de Oro',
          ),
          myCard(
            img:
                "https://1.bp.blogspot.com/-HLixQLdXoq0/UgUBaosspvI/AAAAAAAABOg/h1GV0bfJq48/s1600/IMG_0301.jpg",
            text: "Talong Black,Violet",
            price: 21.09,
            sold: 23.1,
            location: 'Cagayan de Oro',
          ),
        ],
      ),
    );
  }
}
