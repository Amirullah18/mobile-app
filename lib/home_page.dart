import 'package:flutter/material.dart';
import 'package:flutter_project_1/second_page.dart';
import 'package:flutter_project_1/contact_page.dart';
import 'package:flutter_project_1/about_page.dart';
// import 'second_page.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page")),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blueAccent),
              child: Text(
                "Navigasi",
                style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255), fontSize: 20),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                  );
              },
            ),
            ListTile(
              leading: Icon(Icons.description),
              title: Text("About"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => About()),
                  );
              },
            ),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text("Contact"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactPage()),
                  );
              },
            ),
            ListTile(
              leading: Icon(Icons.pages),
              title: Text("Second Page"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondPage()),
                  );
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Setting"),
              onTap: () {},
            )
        ],
        ),
        ),
      );
   
      
  }
}