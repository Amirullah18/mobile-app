import 'package:flutter/material.dart';

class ProductCart extends StatelessWidget{
  final String name;
  final String price;
  final bool isFavorite;
  final String imageUrl;
  final VoidCallback onFavoritePressed;
//constructor
  ProductCart({
    required this.name,
    required this.price,
    required this.isFavorite,
    required this.onFavoritePressed,
    required this.imageUrl
    });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: ListTile(
        leading: Image.network(
          imageUrl, //ini mengambil dari deklarasi key image didalam variable produk
          width: 50,
          height: 50,
          fit: BoxFit.cover,
          errorBuilder: (context, error, StackTrace) {
            return Icon(Icons.image_not_supported, size: 50);
          },
        ),
        title: Text(name, style: TextStyle(fontWeight: FontWeight.bold),),
        subtitle: Text(price),
        // trailing: Icon(Icons.shopping_cart),
        trailing: IconButton(
          icon: Icon(
            isFavorite ? Icons.favorite : Icons.favorite_border,
            color: isFavorite ? Colors.red : Colors.grey,
          ),
          onPressed: onFavoritePressed,
        ),
      ),
    );
  }
}