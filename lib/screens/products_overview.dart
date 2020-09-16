import 'package:flutter/material.dart';
import 'package:statemngt/widgets/product_grid.dart';

class ProductsOverview extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop'),
      ),
      body:new ProductGrid(),
    );
  }
}


