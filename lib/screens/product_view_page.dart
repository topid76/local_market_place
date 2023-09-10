import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:local_marketplace/screens/widget/my_card.dart';

class ProductViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        scrollDirection: Axis.vertical,
        childAspectRatio: 3 / 5,
        crossAxisCount: 2,
        padding: EdgeInsets.all(10),
        crossAxisSpacing: 20,
        mainAxisSpacing: 30,
        primary: false,
        children: [
          myCard(
            img:
                "https://static01.nyt.com/images/2021/09/14/science/07CAT-STRIPES/07CAT-STRIPES-mediumSquareAt3X-v2.jpg",
            text: "Cats",
            price: 21.09,
            sold: 23.1,
            location: 'Cagayan de Oro',
          ),
          myCard(
            img:
                "https://static01.nyt.com/images/2021/09/14/science/07CAT-STRIPES/07CAT-STRIPES-mediumSquareAt3X-v2.jpg",
            text: "Cats",
            price: 21.09,
            sold: 23.1,
            location: 'Cagayan de Oro',
          ),
          myCard(
            img:
                "https://static01.nyt.com/images/2021/09/14/science/07CAT-STRIPES/07CAT-STRIPES-mediumSquareAt3X-v2.jpg",
            text: "Cats",
            price: 21.09,
            sold: 23.1,
            location: 'Cagayan de Oro',
          ),
          myCard(
            img:
                "https://static01.nyt.com/images/2021/09/14/science/07CAT-STRIPES/07CAT-STRIPES-mediumSquareAt3X-v2.jpg",
            text: "Cats",
            price: 21.09,
            sold: 23.1,
            location: 'Cagayan de Oro',
          ),
          myCard(
            img:
                "https://static01.nyt.com/images/2021/09/14/science/07CAT-STRIPES/07CAT-STRIPES-mediumSquareAt3X-v2.jpg",
            text: "Cats",
            price: 21.09,
            sold: 23.1,
            location: 'Cagayan de Oro',
          ),
          myCard(
            img:
                "https://static01.nyt.com/images/2021/09/14/science/07CAT-STRIPES/07CAT-STRIPES-mediumSquareAt3X-v2.jpg",
            text: "Cats",
            price: 21.09,
            sold: 23.1,
            location: 'Cagayan de Oro',
          ),
          myCard(
            img:
                "https://static01.nyt.com/images/2021/09/14/science/07CAT-STRIPES/07CAT-STRIPES-mediumSquareAt3X-v2.jpg",
            text: "Cats",
            price: 21.09,
            sold: 23.1,
            location: 'Cagayan de Oro',
          ),
          myCard(
            img:
                "https://static01.nyt.com/images/2021/09/14/science/07CAT-STRIPES/07CAT-STRIPES-mediumSquareAt3X-v2.jpg",
            text: "Cats",
            price: 21.09,
            sold: 23.1,
            location: 'Cagayan de Oro',
          ),
        ],
      ),
    );
  }
}
