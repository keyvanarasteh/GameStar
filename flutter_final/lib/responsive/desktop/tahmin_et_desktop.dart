import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_final/responsive/desktop/tahmin_et_sonuc.dart';

class TahminDesktop extends StatefulWidget {
  const TahminDesktop({super.key});

  @override
  State<TahminDesktop> createState() => _TahminDesktopState();
}

class _TahminDesktopState extends State<TahminDesktop> {
  Color mainColor = Color.fromARGB(255, 36, 36, 36);
  Color secondColor = Color.fromARGB(255, 97, 97, 97);
  var _tahmin = TextEditingController();
  int rastgeleSayi = 0;
  int kalanSayi = 5;
  String yonlendirme = "";

  @override
  void initState() {
    super.initState();
    rastgeleSayi = Random().nextInt(101);
    print("Rastgele Sayı : $rastgeleSayi");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[700],
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          title: Text("Tahmin Mode"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Tahmin Moduna Hoşgeldiniz",
                style: TextStyle(color: Colors.black, fontSize: 36),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                "Kalan hak : $kalanSayi",
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                "Yardım : $yonlendirme",
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
              Text(
                "1-100 arasında tutulan sayıyı tahmin ediniz",
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
              SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _tahmin,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    labelText: "Tahmin",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    )),
                  ),
                ),
              ),
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  child: Text("Tahmin Et"),
                  onPressed: () {
                    setState(() {
                      kalanSayi = kalanSayi - 1;
                    });
                    int tahmin = int.parse(_tahmin.text);

                    if (tahmin == rastgeleSayi) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TahminSonuc(true)));
                      return;
                    }

                    if (tahmin > rastgeleSayi) {
                      setState(() {
                        yonlendirme = "Tahmini Azalt";
                      });
                    }

                    if (tahmin < rastgeleSayi) {
                      setState(() {
                        yonlendirme = "Tahmini Arttır";
                      });
                    }

                    if (kalanSayi == 0) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TahminSonuc(false)));
                    }

                    _tahmin.text = "";
                  },
                ),
              )
            ],
          ),
        ));
  }
}
