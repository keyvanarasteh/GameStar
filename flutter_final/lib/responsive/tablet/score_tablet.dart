import 'package:flutter/material.dart';
import 'package:flutter_final/screens/game_mode_screen.dart';
import 'package:flutter_final/main.dart';
import 'package:flutter_final/screens/start_screen.dart';

class ScoreScreenTablet extends StatelessWidget {
  ScoreScreenTablet(this.score, {super.key});
  final int score;
  Color mainColor = Color.fromARGB(255, 35, 35, 36);

  Color secondColor = Color.fromARGB(255, 98, 99, 100);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 400,
              child: Image.network(
                  "https://st.depositphotos.com/1454412/3475/i/450/depositphotos_34757863-stock-photo-congratulations-balloons-3d-background.jpg"),
            ),
            SizedBox(
              height: 20,
            ),
            FittedBox(
              child: Text(
                "Tebrikler soruları başarıyla tamamladınız...",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Text(
              "Yaptığınız Score :",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "$score",
              style: TextStyle(
                color: Colors.grey[50],
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Start()));
              },
              elevation: 0.0,
              color: Colors.grey[400],
              child: Text("Anasayfaya Dön"),
            ),
            SizedBox(
              height: 30.0,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GameMode()));
              },
              elevation: 0.0,
              color: Colors.grey[300],
              child: Text("Kategori Seç"),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
