import 'package:flutter/material.dart';
import '../pages/AddProductPage.dart';
// import 'package:flutter_project_1/pages/home_pagetugas4.dart';


class AddProductButton extends StatelessWidget {
  final Function(Map<String, dynamic>) onProductAdded;

  AddProductButton({required this.onProductAdded});

  void _navigateToAddProduct(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (contact) => Addproductpage()),
      );
      if (result != null) {
        onProductAdded(result);
      }
  }
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => _navigateToAddProduct(context),
      child: Icon(Icons.add),
      backgroundColor: Colors.blue,
      );
  }
}
