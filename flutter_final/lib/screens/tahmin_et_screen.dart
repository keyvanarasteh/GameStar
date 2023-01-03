import 'package:flutter/material.dart';
import 'package:flutter_final/Work%20Process/tahmin_et_desktop.dart';

class TahminEt extends StatelessWidget {
  const TahminEt({super.key});

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
        return TahminDesktop();
      } else if (device == "tablet") {
        return TahminDesktop();
      } else if (device == "desktop") {
        return TahminDesktop();
      } else {
        return TahminDesktop();
      }
    }

    return screenType();
  }
}
