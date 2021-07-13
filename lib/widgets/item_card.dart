import 'package:flutter/material.dart';
import 'package:restaurant_menu/const.dart';

class ItemCard extends StatelessWidget {
  final String type;
  final String image;
  final String ingr;
  final List size;
  final List price;

  ItemCard({this.type, this.image, this.ingr, this.size, this.price});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          width: double.infinity,
          child: Image(
            image: NetworkImage(image),
            fit: BoxFit.cover,
          ),
        ),
        Text(
          type,
          style: KTextStyle,
        ),
        Text(
          '${ingr == null ? '' : 'Ingr: $ingr'}',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        Text(
          ' ${size[0] == null ? 'price = ${price[0][0]} \$' : '${size[0]} : ${price[0]} \$'}',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
