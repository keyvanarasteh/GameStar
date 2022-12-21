import 'package:flutter/material.dart';
import 'package:flutter_final/responsive/desktop/score_desktop.dart';
import 'package:flutter_final/responsive/large/score_large.dart';
import 'package:flutter_final/responsive/mobile/score_mobile.dart';
import 'package:flutter_final/responsive/tablet/score_tablet.dart';

class Score extends StatelessWidget {
  const Score(this.score, {super.key});
  final int score;
  String ekranTanimla(double screen) {
    if (screen <= 576) {
      return "mobile";
    } else if (screen <= 768) {
      return "tablet";
    } else if (screen <= 992) {
      return "desktop";
    } else {
      return "large";
    }
  }

  @override
  Widget build(BuildContext context) {
    var screenWith = MediaQuery.of(context).size.width;
    var device = ekranTanimla(screenWith);

    Widget screenType() {
      if (device == "mobile") {
        return ScoreScreenMobile(score);
      } else if (device == "tablet") {
        return ScoreScreenTablet(score);
      } else if (device == "desktop") {
        return ScoreScreenDesktop(score);
      } else {
        return ScoreScreenLarge(score);
      }
    }

    return screenType();
  }
}
