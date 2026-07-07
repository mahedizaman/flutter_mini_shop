import 'package:flutter/material.dart';

class BrandViewPage extends StatelessWidget {
  const BrandViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> brands = ['All', 'Adidas', 'Nike', 'Bata'];
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: brands.length,
        itemBuilder: (context, index) {
          final brand = brands[index];

          final isSelected = index == 0;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Chip(
              label: Text(
                brand,
                style: TextStyle(
                  color: isSelected ? Colors.white : Colors.black,
                ),
              ),
              backgroundColor: isSelected ? Colors.amber : Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
                side: BorderSide(
                  color: isSelected ? Colors.amber : Colors.grey,
                  width: 1.5,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
