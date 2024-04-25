import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Action Button App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State {
  String fileName = 'images/kemdikbud.jpg';

  void selectImage(int index) {
    setState(() {
      switch (index) {
        case 0:
          fileName = 'images/kemdikbud.jpg';
          break;
        case 1:
          fileName = 'images/logopolbeng.png';
          break;
        case 2:
          fileName = 'images/logovokasi.jpg';
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo Action Button'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.laptop),
            onPressed: () {
              selectImage(0);
            },
          ),
          IconButton(
            icon: const Icon(Icons.account_balance),
            onPressed: () {
              selectImage(1);
            },
          ),
          // Tambahkan action button baru di sini
          IconButton(
            icon: const Icon(Icons.anchor), // Icon jangkar
            onPressed: () {
              selectImage(2); // Memanggil fungsi untuk mengubah gambar
            },
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Image.asset(
            fileName,
            height: 350.0,
            fit: BoxFit.fitHeight,
          ),
        ],
      ),
    );
  }
}
