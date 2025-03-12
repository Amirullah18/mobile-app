import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(appBar: AppBar(title: Text("Contact Page")),
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