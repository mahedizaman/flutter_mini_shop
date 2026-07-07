import 'package:flutter/material.dart';
import 'package:mini_shop/product_details.dart';
import 'package:mini_shop/widgets/brand_view.dart';
import 'package:mini_shop/widgets/product_card.dart';
import 'package:mini_shop/widgets/search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 252, 244),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text.rich(
                      TextSpan(
                        text: 'Shoes,\n',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),

                        children: [
                          TextSpan(
                            text: 'Collection',
                            style: const TextStyle(
                              color: Colors.amber,
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(child: SearchBarPage()),
                ],
              ),
              BrandViewPage(),

              Expanded(
                child: ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return ProductCardPage(
                      title: product['title'] as String,
                      price: product['price'] as double,
                      image: product['imageUrl'] as String,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
