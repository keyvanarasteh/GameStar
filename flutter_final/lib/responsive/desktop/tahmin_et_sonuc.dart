import 'package:flutter/material.dart';

class TahminSonuc extends StatefulWidget {
  TahminSonuc(this.sonuc, {super.key});
  bool sonuc;

  @override
  State<TahminSonuc> createState() => _TahminSonucState();
}

class _TahminSonucState extends State<TahminSonuc> {
  Color mainColor = Color.fromARGB(255, 36, 36, 36);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[900],
        appBar: AppBar(
          backgroundColor: mainColor,
          title: Text("Tahmin Mode"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              widget.sonuc
                  ? Image.asset("images/start_score_images/soru2.jpg")
                  : Image.asset("images/start_score_images/soru.jpg"),
              SizedBox(
                height: 30,
              ),
              widget.sonuc
                  ? Text(
                      "Kazandınız",
                      style: TextStyle(color: Colors.white, fontSize: 36),
                    )
                  : Text(
                      "Kaybettiniz",
                      style: TextStyle(color: Colors.white, fontSize: 36),
                    ),
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Tekrar Dene")),
              )
            ],
          ),
        ));
  }
}
