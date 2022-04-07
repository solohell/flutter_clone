import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/mainController.dart';

MainController c = Get.put(MainController());

class Style {
  static const TextStyle songTitle = TextStyle(
    color: Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle songBody = TextStyle(
    color: Colors.white,
    fontSize: 16,
  );
  static const TextStyle songTime =
      TextStyle(color: Colors.white, fontSize: 12);
  static const TextStyle currentLyrics =
      TextStyle(color: Colors.white, fontSize: 16);
  static const TextStyle nextLyrics =
      TextStyle(color: Colors.grey, fontSize: 16);
  static const TextStyle lyricsSongTitle =
      TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold);
  static const TextStyle lyricsSongSinger =
      TextStyle(color: Colors.white, fontSize: 12);
}

class ColorSet {
  static const List topBackGroundColor = [
    Color(0xff6495ED),
    Color(0xff008B8B),
    Color(0xffFF8C00),
    Color(0xff32CD32),
    Color(0xffFF8C00),
    Color(0xffF0E68C),
    Color(0xff6495ED),
  ];
}
