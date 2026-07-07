import 'package:flutter/material.dart';

class ProductCardPage extends StatelessWidget {
  final String title;
  final double price;
  final String image;
  const ProductCardPage({
    super.key,
    required this.title,
    required this.price,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(216, 240, 253, 1),
      child: Column(
        children: [
          Text(title),
          SizedBox(height: 5.0),
          Text('\$$price'),
          SizedBox(height: 5.0),
          Image(image: AssetImage(image)),
        ],
      ),
    );
  }
}
