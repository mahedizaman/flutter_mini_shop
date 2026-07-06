import 'package:flutter/material.dart';

class SearchBarPage extends StatelessWidget {
  const SearchBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search',
        prefixIcon: Icon(Icons.search, size: 24),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            bottomLeft: Radius.circular(30),
          ),
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            bottomLeft: Radius.circular(30),
          ),
          borderSide: BorderSide(color: Colors.black87),
        ),
      ),
    );
  }
}
