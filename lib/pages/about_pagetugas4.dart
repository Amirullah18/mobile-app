import 'package:flutter/material.dart';
// import '../pages/about_page.dart';
class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tentang Aplikasi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          'Aplikasi ini dirancang untuk [Tujuan utamanya adalah untuk mengotomatiskan dan menyederhanakan proses penjualan, sehingga lebih efisien dan akurat]. Kami berkomitmen untuk memberikan pengalaman terbaik kepada pengguna.',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}