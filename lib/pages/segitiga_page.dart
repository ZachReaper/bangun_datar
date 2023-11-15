import 'package:bangun_datar_app/controller/segitiga_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SegitigaPage extends StatelessWidget {
  SegitigaPage({Key? key}) : super(key: key);
  final SegitigaController _segitigaController = Get.put(SegitigaController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Segitiga Page"),
      ),
      body: Column(
        children: [
          Image.asset(
            "assets/Segitiga.png",
            height: 115,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Text("Segitiga"),
          ),
          Text(
              "Sebuah segitiga adalah poligon dengan tiga ujung dan tiga simpul. Ini adalah salah satu bentuk dasar dalam geometri. Segitiga dengan simpul A, B, dan C dilambangkan. Dalam geometri Euclidean, setiap tiga titik, ketika non-collinear, menentukan segitiga unik dan sekaligus, sebuah bidang unik."),
          Padding(

            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              onChanged: (value) {
                _segitigaController.alas = int.parse(value);
              },
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "alas",
                  hintText: "masukan alas",
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  contentPadding: EdgeInsets.symmetric(
                      vertical: 4, horizontal: 8),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
          ),
          Padding(

            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              onChanged: (value) {
                _segitigaController.tinggi = int.parse(value);
              },
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "tinggi",
                  hintText: "masukan tinggi",
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  contentPadding: EdgeInsets.symmetric(
                      vertical: 4, horizontal: 8),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.greenAccent,
                      padding: EdgeInsets.all(20),
                      textStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal
                      ),
                    ),
                    onPressed: () {
                      _segitigaController.hitungLuas();
                    }, child: Text("Hitung Luas",
                  style: TextStyle(color: Colors.white),)),
              ),

              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueAccent,
                    padding: EdgeInsets.all(20),
                    textStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal
                    ),
                  ),
                  onPressed: () {
                    _segitigaController.hitungKeliling();
                  }, child: Text("Hitung keliling",
                style: TextStyle(color: Colors.white),)),

            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Obx(
                  () =>
                  Text(
                    _segitigaController.hasil.value,
                    style: TextStyle(
                      color: _segitigaController.isHitungLuas.value
                          ? Colors.greenAccent
                          : Colors.blueAccent,
                    ),
                  ),
            ),
          ),

        ],
      ),
    );
  }
}
