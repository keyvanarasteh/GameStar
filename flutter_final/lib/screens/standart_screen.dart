import 'package:flutter/material.dart';
import 'package:flutter_final/responsive/desktop/standart_desktop.dart';
import 'package:flutter_final/responsive/large/standart_large.dart';
import 'package:flutter_final/responsive/mobile/standart_mobile.dart';
import 'package:flutter_final/responsive/tablet/standart_tablet.dart';

class Standart extends StatelessWidget {
  const Standart({super.key});

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
        return StandartScreenMobile();
      } else if (device == "tablet") {
        return StandartScreenTablet();
      } else if (device == "desktop") {
        return StandartScreenDesktop();
      } else {
        return StandartScreenLarge();
      }
    }

    return screenType();
  }
}
