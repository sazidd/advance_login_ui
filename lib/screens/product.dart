import 'package:flutter/material.dart';
import 'package:practice_project/models/productModel.dart';
import 'package:practice_project/widgets/itemCard.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        
        child: Padding(
          padding: const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 0),
          child: GridView.builder(
            itemCount: products.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              childAspectRatio: 0.67,
            ),
            itemBuilder: (context, index) => ItemCard(
              product: products[index],
            ),
          ),
        ),
      ),
    );
  }
}
