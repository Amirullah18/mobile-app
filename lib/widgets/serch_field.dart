import 'package:flutter/material.dart';

class UIwidgetField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(labelText: "Masukan pencarian"),
    );
  }
}