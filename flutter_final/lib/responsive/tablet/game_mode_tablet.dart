import 'package:flutter/material.dart';
import 'package:flutter_final/screens/standart_screen.dart';

import '../../screens/tahmin_et_screen.dart';

class GameModeScreenTablet extends StatelessWidget {
  const GameModeScreenTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[700],
        title: Text("Choose Game Mode"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 50, left: 20, right: 20),
        child: SafeArea(
            child: ListView(
          children: [
            Column(
              children: [
                FittedBox(
                  child: Text(
                    "Lütfen İlgilendiğiniz alanları seçiniz",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey[400],
                        letterSpacing: 1.5),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Wrap(
                  runSpacing: 3,
                  spacing: 5,
                  children: [
                    ChoiceChip(
                      avatar: CircleAvatar(
                        backgroundColor: Colors.pink,
                      ),
                      label: Text("Filmler"),
                      shadowColor: Colors.blue,
                      selected: false,
                      selectedColor: Colors.cyan,
                      selectedShadowColor: Colors.black,
                      onSelected: (value) {
                        value = value;
                      },
                    ),
                    ChoiceChip(
                      avatar: CircleAvatar(
                        backgroundColor: Colors.red,
                      ),
                      label: Text("Diziler"),
                      shadowColor: Colors.blue,
                      selected: false,
                      selectedColor: Colors.cyan,
                      selectedShadowColor: Colors.black,
                      onSelected: (value) {
                        value = value;
                      },
                    ),
                    ChoiceChip(
                      avatar: CircleAvatar(
                        backgroundColor: Colors.yellow,
                      ),
                      label: Text("Anime - Manga"),
                      shadowColor: Colors.blue,
                      selected: false,
                      selectedColor: Colors.cyan,
                      selectedShadowColor: Colors.black,
                      onSelected: (value) {
                        value = value;
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                OutlinedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[900],
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Standart()));
                  },
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Wrap(
                        runSpacing: 5,
                        children: [
                          Text(
                            "Standart Mode ",
                            style: TextStyle(color: Colors.grey[900]),
                          ),
                          Row(children: [
                            Icon(
                              Icons.arrow_circle_right_rounded,
                              color: Colors.grey[300],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Mode 10 sorudan oluşmaktadır.",
                              style: TextStyle(color: Colors.grey[800]),
                            ),
                          ]),
                          Row(children: [
                            Icon(
                              Icons.arrow_circle_right_rounded,
                              color: Colors.grey[300],
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              "İpucu kulklanmak 5 puan kaybına sebep olur",
                              style: TextStyle(color: Colors.grey[800]),
                            ),
                          ]),
                          Row(children: [
                            Icon(
                              Icons.arrow_circle_right_rounded,
                              color: Colors.grey[300],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Her soruda 4 şık bulunmaktadır",
                              style: TextStyle(color: Colors.grey[800]),
                            ),
                          ]),
                        ],
                      ),
                    ),
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey[600],
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                OutlinedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[900],
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => TahminEt()));
                  },
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Wrap(
                        runSpacing: 5,
                        children: [
                          Text(
                            "Tahmin Et Modu ",
                            style: TextStyle(color: Colors.grey[900]),
                          ),
                          Row(children: [
                            Icon(
                              Icons.arrow_circle_right_rounded,
                              color: Colors.grey[300],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Mode içerisinde 0-100 arasında bir sayı tutulmaktadır.",
                              style: TextStyle(color: Colors.grey[800]),
                            ),
                          ]),
                          Row(children: [
                            Icon(
                              Icons.arrow_circle_right_rounded,
                              color: Colors.grey[300],
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              "Oyuncudan verilen ipuclarıyla sayıyı tahmin etmesi istenir.",
                              style: TextStyle(color: Colors.grey[800]),
                            ),
                          ]),
                          Row(children: [
                            Icon(
                              Icons.arrow_circle_right_rounded,
                              color: Colors.grey[300],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "3 tahmin hakkı bulunmaktadır",
                              style: TextStyle(color: Colors.grey[800]),
                            ),
                          ]),
                        ],
                      ),
                    ),
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey[600],
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }
}
