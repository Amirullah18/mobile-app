import 'package:flutter/material.dart';
import '../pages/home_pagetugas4.dart';
import '../pages/second_pagetugas4.dart';
import '../pages/about_pagetugas4.dart';
import '../pages/contact_pagetugas4.dart';
import '../pages/props_page.dart';


class CostumeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
            ),
            ListTile(
              leading: Icon(Icons.add),
              title: Text("Counter Page"),
              onTap: () {
                // Navigator.pop(context);
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => CounterPage()),
                //   );
              },
            ),
            ListTile(
              leading: Icon(Icons.pages),
              title: Text("Props Page"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PropsPage()),
                  );
              },
            ),
          ],
       ),
     );
  }
}

