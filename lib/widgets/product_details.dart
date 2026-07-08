import 'package:flutter/material.dart';

class ProductDetailsPage extends StatefulWidget {
  final Map<String, Object> product;

  const ProductDetailsPage({super.key, required this.product});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  int selectedSize = 40;

  final List<int> sizes = [39, 40, 41, 42, 43];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Product Details',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(Icons.favorite_border),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Product Image
              Center(
                child: Image.asset(
                  widget.product['imageUrl'] as String,
                  height: 250,
                ),
              ),

              const SizedBox(height: 20),

              /// Title
              Text(
                widget.product['title'] as String,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              /// Price
              Text(
                "\$${widget.product['price']}",
                style: const TextStyle(
                  fontSize: 22,
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                "Select Size",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 10),

              /// Size Selector
              Wrap(
                spacing: 10,
                children: sizes.map((size) {
                  final selected = selectedSize == size;

                  return ChoiceChip(
                    label: Text(size.toString()),
                    selected: selected,
                    onSelected: (_) {
                      setState(() {
                        selectedSize = size;
                      });
                    },
                  );
                }).toList(),
              ),

              const SizedBox(height: 25),

              const Text(
                "Description",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 8),

              const Text(
                "Premium quality product with modern design. Comfortable, lightweight and suitable for everyday use.",
                style: TextStyle(color: Colors.grey, height: 1.5),
              ),

              const Spacer(),

              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "Add to Cart",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
