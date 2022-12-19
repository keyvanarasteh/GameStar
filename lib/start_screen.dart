import 'package:flutter/material.dart';
import 'package:flutter_final/game_mode_screen.dart';
import 'package:flutter_final/main.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SafeArea(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 50, left: 5),
                  child: FittedBox(
                    child: Text(
                      "Geek Bilir Yarışmasına Hoşgeldiniz",
                      style: TextStyle(
                          fontSize: 65,
                          color: Colors.grey[400],
                          letterSpacing: 1.5),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Container(
                  height: 200,
                  width: 300,
                  child: Image.asset("images/soru2.jpg"),
                ),
                SizedBox(
                  height: 30.0,
                ),
                TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[100],
                      hintText: "Name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)))),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Column(
                    children: [
                      Wrap(
                        runSpacing: 10,
                        children: [
                          Row(
                            children: [
                              // Icon(Icons.arrow_forward_outlined),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                "Kurallar :",
                                style: TextStyle(
                                  color: Colors.grey[400],
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.arrow_forward_outlined,
                                color: Colors.grey[100],
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                "Her soru 10 puan değerindedir.",
                                style: TextStyle(
                                  color: Colors.grey[400],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.arrow_forward_outlined,
                                color: Colors.grey[100],
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                "İpucu kullanmak soru puanının yarısını eksiltir.",
                                style: TextStyle(
                                  color: Colors.grey[400],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        child: ElevatedButton(
                          child: Text("Başla"),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => GameModeScreen()));
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
