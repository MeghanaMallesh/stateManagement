import 'package:flutter/material.dart';
import 'package:statemngt/screens/product_details_screen.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  ProductItem(this.imageUrl, this.title, this.id);
  @override
  Widget build(BuildContext context) {
    return GridTile(
      child:GestureDetector(
onTap: (){
  Navigator.of(context).pushNamed(ProductDetails.routeName,arguments:id );
},
      
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
      ),),
      footer: GridTileBar(
          title: Text(title),
          trailing: IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
          backgroundColor: Colors.black54,
          leading: IconButton(
            icon: Icon(Icons.favorite),
            color: Theme.of(context).accentColor,
            onPressed: () {},
          )),
    );
  }
}
