import 'package:flutter/material.dart';

class Addproductpage extends StatefulWidget {
  _AddProductPageState createState() => _AddProductPageState();

}

class _AddProductPageState extends  State<Addproductpage>{
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _imageController = TextEditingController();
  final TextEditingController _deskripsiController = TextEditingController();

  void _submitForm(){
    if(_formkey.currentState!.validate()) {
    final newProduct = {
      "name" : _namaController.text,
      "price": _priceController.text,
      "image": _imageController.text,
      "deskripsi": _deskripsiController.text,
      "isFavorite": false,
    };
    Navigator.pop(context, newProduct);
  }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tamabah Produk"),
      ),
      body: Padding(padding: EdgeInsets.all(16.0),
      child: Form(
        key: _formkey,
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            controller: _namaController,
            decoration: InputDecoration(labelText: "Nama Produk"),
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return "Nama produk Tidak boleh kosong !";
              }
              return null;
            },
          ),
          SizedBox(height: 10),
          TextFormField(
            controller: _priceController,
            decoration: InputDecoration(labelText: "Harga Produk"),
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return "Harga produk Tidak boleh kosong !";
              }
              if (double.tryParse(value) == null) {
                return "Harga harus berupa angka";
              }
              return null;
            },
          ),
          SizedBox(height: 10),
          TextFormField(
            controller: _imageController,
            decoration: InputDecoration(labelText: "Link Image"),
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return "Image produk Tidak boleh kosong !";
              }
              if (!Uri.parse(value).isAbsolute) {
                return "Masukan URL yang valid";
              }
              return null;
            },
          ),
          SizedBox(height: 10),
              TextFormField(
                controller: _deskripsiController,
                decoration: InputDecoration(labelText: "Deskripsi Produk"),
                maxLines: 3, 
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "Deskripsi produk tidak boleh kosong!";
                  }
                  return null;
                },
              ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: _submitForm,
            child: Text("Simpan Produk"),
          )
        ],
      ),
      ),
      ),
    );
  }

  @override
void dispose() {
  _namaController.dispose();
  _priceController.dispose();
  _imageController.dispose();
  _deskripsiController.dispose();
  super.dispose();
}
}

