import 'package:flutter/material.dart';
import 'package:flutter_final/data/images_list.dart';
import 'package:flutter_final/data/questions_list.dart';
import 'package:flutter_final/data/tips_list.dart';
import 'package:flutter_final/score.dart';
import 'package:flutter_final/start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StartScreen(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color mainColor = Color.fromARGB(255, 36, 36, 36);
  Color secondColor = Color.fromARGB(255, 97, 97, 97);
  PageController? _controller = PageController(initialPage: 0);
  bool isPressed = false;
  Color isTrue = Colors.green;
  Color isWrong = Colors.red;
  Color btnColor = Color(0xFF117eeb);
  int score = 0;
  int imageindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Padding(
        padding: EdgeInsets.all(18.0),
        child: PageView.builder(
          physics: NeverScrollableScrollPhysics(),
          controller: _controller!,
          onPageChanged: (page) {
            setState(() {
              isPressed = false;
            });
          },
          itemCount: questions.length,
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Question ${index + 1} /${questions.length}",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                    ),
                  ),
                ),
                Divider(
                  color: Colors.white,
                  height: 7.0,
                  thickness: 2.0,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Image.network(
                  images[imageindex],
                  height: 200.0,
                  width: 300.0,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  questions[index].questions!,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                for (int i = 0; i < questions[index].answer!.length; i++)
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 13.0),
                    child: MaterialButton(
                      shape: StadiumBorder(),
                      color: isPressed
                          ? questions[index].answer!.entries.toList()[i].value
                              ? isTrue
                              : isWrong
                          : secondColor,
                      padding: EdgeInsets.symmetric(vertical: 12.0),
                      onPressed: isPressed
                          ? () {}
                          : () {
                              setState(() {
                                isPressed = true;
                              });
                              if (questions[index]
                                  .answer!
                                  .entries
                                  .toList()[i]
                                  .value) {
                                score += 10;
                                print(score);
                              }
                            },
                      child: Text(
                        questions[index].answer!.keys.toList()[i],
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[800],
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => StartScreen()));
                        },
                        child: Text("Exit")),
                    SizedBox(
                      width: 100,
                    ),
                    ElevatedButton(
                      child: Text("Tips"),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            title: Text("Hatırlatma"),
                            content: Text(
                                "Soru puanının yarısı kaybedilecek yinede ipucu alınsın mı ? "),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                        title: Text("İpucu"),
                                        content: Text(tips[index]),
                                        actions: [
                                          TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: Text("Okey"))
                                        ],
                                      ),
                                    );
                                    score -= 5;
                                  },
                                  child: Text("Yes")),
                              TextButton(
                                  onPressed: () {
                                    print("Selected no");
                                    Navigator.pop(context);
                                  },
                                  child: Text("Exit")),
                            ],
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    OutlinedButton(
                      onPressed: isPressed
                          ? index + 1 == questions.length
                              ? () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ScoreScreen(score)));
                                }
                              : () {
                                  _controller!.nextPage(
                                      duration: Duration(milliseconds: 500),
                                      curve: Curves.linear);
                                  setState(() {
                                    isPressed = false;
                                    imageindex += 1;
                                  });
                                }
                          : null,
                      style: OutlinedButton.styleFrom(
                        shape: StadiumBorder(),
                        side: BorderSide(
                            color: Colors.amber.shade100, width: 3.0),
                      ),
                      child: Text(
                        index + 1 == questions.length
                            ? "See result"
                            : "Next question",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
