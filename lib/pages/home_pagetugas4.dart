import 'package:flutter/material.dart';
import '../widgets/costume_drawer.dart';
import '../widgets/header_widget.dart';
import '../widgets/serch_field.dart';
import '../widgets/produk_list.dart';
import '../widgets/add_button.dart';
import '../data/product_data.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // List<Map<String, dynamic>> produk = [];
  List<Map<String, dynamic>> produk = List.from(produkData);

  void _addProduct(Map<String, dynamic> newProduct) {
    setState(() {
      produk.add(newProduct);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page")),
      drawer: CostumeDrawer(),
      // body: Center(child: Text("Selamat Datang di Home Page")),
      body: Column(children: [HeaderWidget(), UIwidgetField(), ProdukList(produk: produk,)]),

      floatingActionButton: AddProductButton(onProductAdded: _addProduct),
    );
  }
}