import 'package:flutter/material.dart';
import '../data/product_data.dart';
import 'produk_cart.dart';

class ProdukList extends StatefulWidget {
  @override
    _ProdukListState createState() => _ProdukListState();
}

class _ProdukListState extends State<ProdukList> {
  List<Map<String, dynamic>> produk = List.from(produkData);
  void toggleFavorite(int index){
    setState(() {
      produk[index]["isFavorite"] = !produk[index]["isFavorite"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
            child: ListView.builder(
              itemCount: produk.length,
              itemBuilder: (context, index){
                return ProductCart(
                  name: produk[index]["name"]!,
                  price: produk[index]["price"]!,
                  isFavorite: produk[index]["isFavorite"],
                  imageUrl: produk[index]["image"]!,
                  onFavoritePressed: () => toggleFavorite(index),
                );
              }
            ),
          );
  } 
}
