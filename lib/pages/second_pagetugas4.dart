import 'package:flutter/material.dart';
import 'package:flutter_project_1/widgets/costume_drawer.dart';

class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Page")),
      drawer: CostumeDrawer(),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.backpack),
          ),
      ),
    );
  }
}