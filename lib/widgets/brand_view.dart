import 'package:flutter/material.dart';
import 'package:mini_shop/product_details.dart';

class BrandViewPage extends StatefulWidget {
  final Function(String) onBrandSelected;

  const BrandViewPage({super.key, required this.onBrandSelected});

  @override
  State<BrandViewPage> createState() => _BrandViewPageState();
}

class _BrandViewPageState extends State<BrandViewPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final List<String> brands = [
      'All',
      ...products
          .map((product) => product['company'] as String)
          .toSet()
          .toList(),
    ];

    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: brands.length,
        itemBuilder: (context, index) {
          final brand = brands[index];

          final isSelected = selectedIndex == index;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
                widget.onBrandSelected(brands[index]);
              },
              child: Chip(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                label: Text(
                  brand,
                  style: TextStyle(
                    color: isSelected ? Colors.white : Colors.black,
                  ),
                ),
                backgroundColor: isSelected ? Colors.amberAccent : Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                  side: BorderSide(
                    color: isSelected
                        ? Colors.amber
                        : const Color.fromARGB(255, 231, 224, 224),
                    width: 1,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
