import 'package:flutter/material.dart';

class BrandViewPage extends StatefulWidget {
  const BrandViewPage({super.key});

  @override
  State<BrandViewPage> createState() => _BrandViewPageState();
}

class _BrandViewPageState extends State<BrandViewPage> {
  int selectedIndex = 0;
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

          final isSelected = selectedIndex == index;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Chip(
                padding: EdgeInsets.all(12),
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
