import 'package:flutter/material.dart';
import 'package:flutter_final/responsive/desktop/start_desktop.dart';
import 'package:flutter_final/responsive/large/start_large.dart';
import 'package:flutter_final/responsive/mobile/start_mobile.dart';
import 'package:flutter_final/responsive/tablet/start_tablet.dart';

class Start extends StatefulWidget {
  const Start({super.key});

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
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
        return StartScreenMobile();
      } else if (device == "tablet") {
        return StartScreenTablet();
      } else if (device == "desktop") {
        return StartScreenDesktop();
      } else {
        return StartScreenLarge();
      }
    }

    return screenType();
  }
}
