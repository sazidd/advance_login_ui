import 'package:flutter/material.dart';
import 'package:practice_project/models/productModel.dart';

class ItemCard extends StatelessWidget {
  final Products product;
  ItemCard({this.product});
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      product.productImage,
                      fit: BoxFit.cover,
                    ),
                    Chip(
                        backgroundColor: Colors.green,
                        label: Text(
                          "SALE",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )),
                    Text(
                      product.productDesc,
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "\$${product.disCountProductPrice}",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "\$${product.productPrice}",
                      style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          decorationThickness: 2,
                          fontSize: 15),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
