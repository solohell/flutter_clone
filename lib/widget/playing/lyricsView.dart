import 'package:audioplayers/audioplayers.dart';
import 'package:flo_app/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/controller.dart';

class LyricsView extends StatefulWidget {
  const LyricsView({Key? key}) : super(key: key);

  @override
  State<LyricsView> createState() => _LyricsViewState();
}

class _LyricsViewState extends State<LyricsView> {
  final Controller c = Get.put(Controller());
  String currentLyrics = "";
  String nextLyrics = "";
  @override
  void initState() {
    AudioPlayer audioPlayer = c.audioplayer.value;
    super.initState();
    audioPlayer.onAudioPositionChanged.listen((Duration event) {
      setState(() {
        String duration = event.toString().substring(2, 11);
        int currentTime = getTimeStamp(duration);
        int getNextLyricsIndex = getNextLyricIndex(currentTime);
        c.currentLyricsIndex.value = getNextLyricsIndex - 1; //가사 전체 보기를 위한 변수
        currentLyrics = getLyricsString(getNextLyricsIndex - 1);
        nextLyrics = getLyricsString(getNextLyricsIndex);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text(
            currentLyrics,
            style: Style.currentLyrics,
          ),
        ),
        Text(
          nextLyrics,
          style: Style.nextLyrics,
        ),
      ],
    );
  }

  int getTimeStamp(String time) {
    int min = int.parse(time.substring(0, 2));
    int sec = int.parse(time.substring(3, 5));
    int msec = int.parse(time.substring(6, 9));

    return (min * 60 * 1000) + (sec * 1000) + msec;
  }

  String getLyricsString(int index) {
    final list = c.lyricsTimes;
    if (index < 0 || index >= list.length) {
      return '';
    }
    int key = list[index];
    return c.lyrics[key] ?? '';
  }

  int getNextLyricIndex(int value) {
    final list = c.lyricsTimes;
    int result = 0;
    for (var i = 0; i < list.length; i++) {
      final each = list[i];
      result = i;
      if (value < each) {
        break;
      }
    }
    return result;
  }
}
  

//   void currentlyrics() {
//     AudioPlayer audioPlayer = c.audioplayer.value;
//     final lyrics = c.lyrics.value;
//     audioPlayer.onAudioPositionChanged.listen((Duration event) {
//       print(event.inSeconds);
//     });
//   }
// }
