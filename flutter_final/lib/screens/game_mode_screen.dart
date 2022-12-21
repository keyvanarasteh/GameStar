import 'package:flutter/material.dart';
import 'package:flutter_final/responsive/desktop/game_mode_desktop.dart';
import 'package:flutter_final/responsive/large/game_mode_large.dart';
import 'package:flutter_final/responsive/mobile/game_mode_mobile.dart';
import 'package:flutter_final/responsive/tablet/game_mode_tablet.dart';

class GameMode extends StatefulWidget {
  const GameMode({super.key});

  @override
  State<GameMode> createState() => _GameModeState();
}

class _GameModeState extends State<GameMode> {
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
        return GameModeScreenMobile();
      } else if (device == "tablet") {
        return GameModeScreenTablet();
      } else if (device == "desktop") {
        return GameModeScreenDesktop();
      } else {
        return GameModeScreenLarge();
      }
    }

    return screenType();
  }
}
