import 'package:flutter/material.dart';

class ProductCardPage extends StatelessWidget {
  final String title;
  final double price;
  final String image;
  final bool isEven;
  const ProductCardPage({
    super.key,
    required this.title,
    required this.price,
    required this.image,
    required this.isEven,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: isEven
            ? Color.fromRGBO(216, 240, 253, 1)
            : Color.fromARGB(255, 239, 244, 244),
      ),
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 30),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5.0),
          Text(
            '\$$price',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5.0),
          Center(child: Image(height: 175, image: AssetImage(image))),
        ],
      ),
    );
  }
}
