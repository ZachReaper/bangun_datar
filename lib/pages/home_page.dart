import 'package:bangun_datar_app/pages/lingkaran_page.dart';
import 'package:bangun_datar_app/pages/persegi_page.dart';
import 'package:bangun_datar_app/pages/persegipanjang_page.dart';
import 'package:bangun_datar_app/pages/segitiga_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
        title: Text(
          "Home Page",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Expanded(child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>PersegiPage()));
                  },
                  child: CustomMenu(imageAssets: "assets/Persegi.png",title: "Persegi")),),
              Expanded(child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>PersegiPanjangPage()));
                  },
                  child: CustomMenu(imageAssets: "assets/persegipanjang.png",title: "Persegi Panjang")),)
            ],
          ),
          Row(
            children: [
              Expanded(child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LingkaranPage()));
                  },
                  child: CustomMenu(imageAssets: "assets/lingkaran.png",title: "Lingkaran")),),
              Expanded(child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SegitigaPage()));
                  },
                  child: CustomMenu(imageAssets: "assets/Segitiga.png",title: "Segitiga")),)
            ],
          ),
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
