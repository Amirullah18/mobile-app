import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return MouseRegion(
    //   onEnter: (_) => debugPrint("Mouse masuk Header !"),
    //   onExit: (_) => debugPrint("Mouse Keluar dari Header"),
    //   onHover: (_) => debugPrint("Mouse bergerak di Header !"),
    return GestureDetector(
      onPanUpdate: (details){
        if (details.delta.dx > 0) {
          print("Geser ke Kanan Berhasil");
        } else if (details.delta.dx < 0) {
          print("Ke Kiri Berhasil");
        }
      },
   child:  Container(
      padding: EdgeInsets.all(10),
      color: Colors.blue,
      width: 2000,
      // child: Center(
      child: Column(
        // child: text(
        children: [
        Text("Selamat Datang di Toko Kami",
          style: TextStyle(fontSize: 18, color: Colors.white,
          fontWeight: FontWeight.bold,

          ),
        ),
        SizedBox(height: 10),
        //tombol dengan efek samping mengambang
        // OutlinedButton(
        ElevatedButton(
          onPressed: () => _showPromoDialog(context),
            // print("Tombol Sudah ditekan");
  
          child: Text("Lihat Promo"),
        ),
        // SizedBox(height: 5),
        // TextButton(onPressed: () => _showPromoDialog(context),
        //   // print("Teks button ditemukan");
        
        // child: Text("Lihat Texs"),
        // ),
        // SizedBox(height: 5),
        // FloatingActionButton(
        //   onPressed: (){
        //     print("Floating ditekan");
        //   },
        //   child: Icon(Icons.add),
        //   ),
        //   SizedBox(height: 5),
        //   GestureDetector(
        //     onLongPress: (){
        //       print("Tekan lama berhasil");
        //     },
        //     child: Container(
        //       padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        //       decoration: BoxDecoration(
        //         color: Colors.white,
        //         borderRadius: BorderRadius.circular(5),
        //       ),
        //       child: Text(
        //         "Tekan lama untuk lihat promo",
        //         style: TextStyle(
        //           color: Colors.amber,
        //           fontWeight: FontWeight.bold,
        //         ),
        //       ),
        //     ),
        //   ),
        //   SizedBox(height: 5),
        //   InkWell(
        //     onTap: () {
        //       print("Tombol dengan efek ripple ditekan");
        //     },
        //     child: Container(
        //       padding: EdgeInsets.all(12),
        //       margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        //       decoration: BoxDecoration(
        //         color: Colors.orange,
        //         borderRadius: BorderRadius.circular(8),
        //       ),
        //       child: Center(
        //         child: Text(
        //           "Elevevated Button",
        //           style: TextStyle(color: Colors.white),
        //         ),
        //       ),
        //     ),
        //   )
        ],
      ),
    ),
    );
  }
}

void _showPromoDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Promo spesial"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [Text("Dapatkan Diskon 50% untuk semua produk hari ini !"),
          SizedBox(height: 10),
          Image.network("https://images.unsplash.com/photo-1603789823099-c69b1819a269?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          width: 200,
          height: 100,
          fit: BoxFit.cover,
          ),
          ],
        ),
      );
    },
    );
}