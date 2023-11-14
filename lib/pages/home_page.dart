import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text(
          "Home Page",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          CustomMenu(imageAssets: "assets/Persegi.png",title: "Persegi"),
          CustomMenu(imageAssets: "assets/Segitiga.png",title: "Segitiga"),
          CustomMenu(imageAssets: "assets/persegipanjang.png",title: "Persegi Panjang"),
          CustomMenu(imageAssets: "assets/lingkaran.png",title: "Lingkaran"),
        ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key, required this.imageAssets, required this.title,
  });
  final String imageAssets;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(color: Colors.greenAccent),
      child: Column(
        children: [
          Image.asset(imageAssets, height: 100, width: 100),
          Text(title),
        ],
      ),
    );
  }
}
