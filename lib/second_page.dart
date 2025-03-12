import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(appBar: AppBar(title: Text("Seconda Page")),
   body: Center(
    child: ElevatedButton(
      onPressed: (){
        Navigator.pop(context);
      },
      //child: Text("Kembali ke halaman utama"),
      child: Icon(Icons.backspace),
      ),
     ),
   );
  }
}