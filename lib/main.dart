import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Stateless widget',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: GridViewProduk(),
    );
  }
}
  class ListScreen extends StatelessWidget {
    final List<String> items = ["Laptop", "Smartphone", "Table", "Smartwacth"];
    @override
    Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(title: Text("Contoh List")),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index){
            return ListTile(
              leading: Icon(Icons.add),
              title: Text(items[index]));
          },
      ),
      );
    }
  }

//deklarasi data menggunakan looping
class ProductScreen extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {"kode": "P001", "nama": "Laptop", "harga": 2000000},
    {"kode": "P002", "nama": "Hp", "harga": 3000000},
    {"kode": "P003", "nama": "Table", "harga": 4000000},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Daftar produk")),
      body: Center(
        child: DataTable(columns:[
          DataColumn(label: Text("Kode")),
          DataColumn(label: Text("Nama")),
          DataColumn(label: Text("Harga")),

        ], rows: products.map((product) => DataRow(cells: [
          DataCell(Text(product['kode'])),
          DataCell(Text(product['nama'])),
          DataCell(Text(product['harga'].toString())),
        ],
        ),
        )
        .toList(),
        ),
      ),
    );
  }
}

//Tugas kedua menggunakan Gridview
class GridViewProduk extends StatefulWidget {
  @override
  State<GridViewProduk> createState() => _GridViewProduk();
}

class _GridViewProduk extends State<GridViewProduk> {
  final List<Map<String, dynamic>> produk = [
    {"name": "Laptop",
    "price": "10.000.000",
    "isFavorite": false,
    "image": "https://images.unsplash.com/photo-1496181133206-80ce9b88a853?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8bGFwdG9wfGVufDB8fDB8fHww",},

    {"name": "Smartphone",
    "price": "5.000.000",
    "isFavorite": false,
    "image": "https://images.unsplash.com/photo-1529653762956-b0a27278529c?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cGhvbmV8ZW58MHx8MHx8fDA%3D",},

    {"name": "Televisi",
    "price": "3.000.000",
    "isFavorite": false,
    "image": "https://plus.unsplash.com/premium_photo-1683121217848-44dde7d393e6?q=80&w=1074&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",},

    {"name": "Charger Hp",
    "price": "300.000",
    "isFavorite": false,
    "image": "https://images.unsplash.com/photo-1727885796960-70a0adfe40ef?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",},

    {"name": "Power Bank",
    "price": "1.300.000",
    "isFavorite": false,
    "image": "https://images.unsplash.com/photo-1644571669391-c0b48363abed?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",},

    {"name": "Headphones",
    "price": "1.500.000",
    "isFavorite": false,
    "image": "https://plus.unsplash.com/premium_photo-1679913792906-13ccc5c84d44?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",},

    {"name": "Camera",
    "price": "8.000.000",
    "isFavorite": false,
    "image": "https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",},

    {"name": "Jam Tanggan",
    "price": "2.500.000",
    "isFavorite": false,
    "image": "https://images.unsplash.com/photo-1523275335684-37898b6baf30?q=80&w=1399&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",},

    {"name": "Sepatu",
    "price": "4.000.000",
    "isFavorite": false,
    "image": "https://images.unsplash.com/photo-1560769629-975ec94e6a86?q=80&w=1528&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",},

    {"name": "Apple Watch",
    "price": "6.000.000",
    "isFavorite": false,
    "image": "https://images.unsplash.com/photo-1546868871-7041f2a55e12?q=80&w=1528&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",},
  ];

  void toggleFavorite(int index){
    setState(() {
      produk[index]["isFavorite"] = !produk[index]["isFavorite"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Daftar Produk")),
      body: Column(
        children: [
          HeaderWidget(),
          UIwidgetField(),
          Expanded(
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
          )
        ],
      )
      );
  } 
}

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.blue,
      child: Center(
        child: Text("Selamat Datang di Toko Kami",
          style: TextStyle(fontSize: 18, color: Colors.white,
          fontWeight: FontWeight.bold,

        ),
      ),
    ),
    );
  }
}

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

class UIwidgetField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(labelText: "Masukan pencarian"),
    );
  }
}


