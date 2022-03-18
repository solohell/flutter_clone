import 'package:audioplayers/audioplayers.dart';
import 'package:flo_app/controller/controller.dart';
import 'package:flo_app/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'lyricsParse.dart';
import 'lyricsView.dart';

class PlayInfo extends StatelessWidget {
  final Controller c = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    String imageUrl = c.song.value.image;
    final lyrics = c.song.value.lyrics;
    String song = c.song.value.file;
    lyricsParse(lyrics);

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
                splashRadius: Material.defaultSplashRadius / 2,
                onPressed: () => {},
                color: Colors.white,
                icon: const Icon(Icons.more_vert_rounded)),
          ],
        ),
        const SizedBox(
          height: 80,
        ),
        Center(
          child: Obx(
            () => Text(
              c.song.value.title,
              style: Style.songTitle,
            ),
          ),
        ),
        const Padding(padding: EdgeInsets.only(top: 10)),
        Center(
          child: Obx(
            () => Text(
              c.song.value.singer,
              style: Style.songBody,
            ),
          ),
        ),
        Center(
            child: imageUrl.isNotEmpty
                ? SizedBox(
                    width: 300,
                    height: 300,
                    child: Image(
                      image: NetworkImage(imageUrl),
                    ),
                  )
                : const SizedBox(
                    width: 300,
                    height: 300,
                  )),
        Center(
          child: SizedBox(
            height: 40,
            child: ListView(
              children: const [LyricsView()],
            ),
          ),
        ),
        SizedBox(
          height: 70,
          child: Column(
            children: <Widget>[
              slider(context),
              Obx((() => Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // paddingOnly(left: 10),
                      Container(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            c.currentplayTime.value,
                            style: Style.songTime,
                          )),
                      const Padding(padding: EdgeInsets.only(left: 290)),
                      Text(
                        c.maxdurationPlayTime.value,
                        style: Style.songTime,
                      ),
                    ],
                  )))
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () => {},
              icon: const Icon(Icons.replay_outlined),
              iconSize: 45,
              color: Colors.white,
            ),
            IconButton(
              onPressed: () => {},
              icon: const Icon(Icons.skip_previous),
              iconSize: 45,
              color: Colors.white,
            ),
            Obx(
              () => IconButton(
                onPressed: () => c.playStatus.value ? stop() : play(song),
                icon: c.playStatus.value
                    ? const Icon(Icons.pause)
                    : const Icon(Icons.play_arrow),
                iconSize: 45,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () => {},
              icon: const Icon(Icons.skip_next),
              iconSize: 45,
              color: Colors.white,
            ),
            IconButton(
              onPressed: () => {},
              icon: const Icon(Icons.shuffle),
              iconSize: 45,
              color: Colors.white,
            ),
          ],
        )
      ],
    );
  }

  void play(String song) async {
    AudioPlayer audioPlayer = c.audioplayer.value;
    c.playStatus.value = !c.playStatus.value;
    try {
      int result = await audioPlayer.play(song);
      if (result == 1) {
        audioPlayer.onDurationChanged.listen((event) {
          // c.playTime.value = event.inMilliseconds;
        });
        audioPlayer.onDurationChanged.listen((Duration event) {
          c.maxduration.value = event.inMilliseconds;
          int shours = Duration(milliseconds: c.maxduration.value).inHours;
          int sminutes = Duration(milliseconds: c.maxduration.value).inMinutes;
          int sseconds = Duration(milliseconds: c.maxduration.value).inSeconds;
          int rminutes = sminutes - (shours * 60);
          int rseconds = sseconds - (sminutes * 60 + shours * 60 * 60);
          c.maxdurationPlayTime.value = "$rminutes:$rseconds";
        });
        audioPlayer.onAudioPositionChanged.listen((Duration event) {
          c.playTime.value = event.inMilliseconds;
          int shours = Duration(milliseconds: c.playTime.value).inHours;
          int sminutes = Duration(milliseconds: c.playTime.value).inMinutes;
          int sseconds = Duration(milliseconds: c.playTime.value).inSeconds;
          int rminutes = sminutes - (shours * 60);
          int rseconds = sseconds - (sminutes * 60 + shours * 60 * 60);
          c.currentplayTime.value =
              "${rminutes.toString().padLeft(2, '0')}:${rseconds.toString().padLeft(2, '0')}";
        });
      }
    } catch (t) {}
  }

  void stop() async {
    AudioPlayer audioPlayer = c.audioplayer.value;
    c.playStatus.value = !c.playStatus.value;
    try {
      await audioPlayer.stop();
    } catch (t) {}
  }

  Widget slider(BuildContext context) {
    const Duration currentValue = Duration();
    final int playtime = currentValue.inMilliseconds;
    return SliderTheme(
        data: SliderTheme.of(context).copyWith(
            activeTrackColor: Colors.deepPurple.shade800,
            inactiveTrackColor: Colors.grey.shade700,
            trackHeight: 3.0,
            thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 0.0)),
        child: Obx(
          () => Slider.adaptive(
              value: c.playTime.value.toDouble(),
              max: c.maxduration.value.toDouble(),
              onChanged: (value) => seekToSec(value.toInt())),
        ));
  }

  void seekToSec(int sec) {
    AudioPlayer audioPlayer = c.audioplayer.value;
    Duration newPos = Duration(milliseconds: sec);
    audioPlayer.seek(newPos);
  }
}
