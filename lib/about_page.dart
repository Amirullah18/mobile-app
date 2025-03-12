import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(appBar: AppBar(title: Text("About")),
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