import 'package:flutter/material.dart';
import '../widgets/costume_drawer.dart';
import '../widgets/header_widget.dart';
import '../widgets/serch_field.dart';
import '../widgets/produk_list.dart';



class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page")),
      drawer: CostumeDrawer(),
      // body: Center(child: Text("Selamat Datang di Home Page")),
      body: Column(children: [HeaderWidget(), UIwidgetField(), ProdukList()]),
    );
  }
}