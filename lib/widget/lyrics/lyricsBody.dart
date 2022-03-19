import 'package:flo_app/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/controller.dart';

class LyricsBody extends StatelessWidget {
  LyricsBody({Key? key}) : super(key: key);
  final Controller c = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            margin: const EdgeInsets.only(left: 30, right: 30, top: 10),
            child: ListView.builder(
                itemCount: c.lyricsTimes.length - 1,
                itemBuilder: (BuildContext context, int i) {
                  MapEntry lyrcisMap = c.lyrics.entries.elementAt(i);
                  return Container(
                      margin: const EdgeInsets.only(bottom: 15),
                      child: GestureDetector(
                        onTap: () => onMoveLyrics(lyrcisMap.key),
                        child: Obx(() => Text(lyrcisMap.value,
                            style: i == c.currentLyricsIndex.value
                                ? Style.currentLyrics
                                : Style.nextLyrics)),
                      ));
                })));
  }

  void onMoveLyrics(milSec) {
    c.audioplayer.value.seek(Duration(milliseconds: milSec));
  }
}
