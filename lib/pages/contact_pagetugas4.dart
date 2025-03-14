import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kontak'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Email:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            Text('amirullah18@email.com', style: TextStyle(fontSize: 16)),
            SizedBox(height: 15),
            Text('Telepon:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            Text('+62 123 456 789', style: TextStyle(fontSize: 16)),
            SizedBox(height: 15),
            Text('Media Sosial:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            Row(
              children: [
                Icon(Icons.facebook, size: 30),
                SizedBox(width: 8),
                Text('Amirullah Amir', style: TextStyle(fontSize: 16)),
              ],
            ),
            Row(
              children: [
                Icon(Icons.alternate_email, size: 30),
                SizedBox(width: 8),
                Text('Amirullah Amir', style: TextStyle(fontSize: 16)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}