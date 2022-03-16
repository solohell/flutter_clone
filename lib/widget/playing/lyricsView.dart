import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/controller.dart';

class LyricsView extends StatelessWidget {
  LyricsView({Key? key}) : super(key: key);
  final Controller c = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    currentlyrics();
    return Container();
  }

  void currentlyrics() {
    AudioPlayer audioPlayer = c.audioplayer.value;
    final lyrics = c.lyrics.value;
    audioPlayer.onAudioPositionChanged.listen((Duration event) {
      print(event.inSeconds);
    });
  }
}
