import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_shop/product_details.dart';
import 'package:mini_shop/widgets/product_details.dart';

void main() {
  runApp(const MyShop());
}

class MyShop extends StatelessWidget {
  const MyShop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurpleAccent),
        textTheme: GoogleFonts.latoTextTheme(),
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.grey,
          ),
          prefixIconColor: (Colors.grey),
        ),

        useMaterial3: true,
      ),
      title: 'Shopping app',

      home: ProductDetailsPage(product: products[0]),
    );
  }
}
