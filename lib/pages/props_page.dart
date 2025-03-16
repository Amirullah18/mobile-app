import 'package:flutter/material.dart';
import '../widgets/costume_drawer.dart';

class User{
  final String name;
  final int age;
  final bool inActive;

   User({required this.name, required this.age, required this.inActive});
  }

class PropsPage extends StatelessWidget {
  final User user = User(name: "Amir", age: 25, inActive: true);
  //ubah sebuah object

  
  void showMessage(BuildContext context){
    final snackBar = SnackBar(content: Text("Hello, $user.name, Age $user.age"));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Props page")),
        drawer: CostumeDrawer(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UserCard(user: user),
              SizedBox(height: 20),
              CounterButton(onPressed: () => showMessage(context)),
            ],
          ),
        ),
    );
  }
}

class UserCard extends StatelessWidget {
  final User user;

  UserCard({required this.user});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Nama: ${user.name}", style: TextStyle(fontSize: 20)),
              Text("Usia: ${user.age}", style: TextStyle(fontSize: 20)),
              Text("Status : ${user.inActive ? 'Aktif' : 'Tidak Aktif'}"),

              SizedBox(height: 20),
              
      ],
    );
  }
}

class CounterButton extends StatelessWidget {
  final VoidCallback onPressed;

  CounterButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: Text("Tampilkan Pesan"));
  }
}