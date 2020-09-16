import 'package:flutter/material.dart';
import 'package:statemngt/modals/products.dart';
import 'package:statemngt/providers/product.dart';
import '../modals/products.dart';
import './product_Item.dart';
import 'package:provider/provider.dart';
class ProductGrid extends StatelessWidget {
  const ProductGrid({
    Key key,@required this.loadedProducts
  }

  ):super(key:key);
 final List<Product> loadedProducts; 
  @override
  Widget build(BuildContext context) {
   final productData= Provider.of<Products>(context);
   final products=productData.items;
    return GridView.builder(
          padding: const EdgeInsets.all(10),
          itemCount: loadedProducts.length,
          itemBuilder: (ctx, i) => ProductItem(products[i].id,
              products[i].title, products[i].imageUrl),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
      
    );
  }
}