import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flo_app/controller/controller.dart';
import 'package:flo_app/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PlayInfo extends StatelessWidget {
  const PlayInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Controller c = Get.put(Controller());
    String imageUrl = c.song.value.image;
    final lyrics = c.song.value.lyrics;
    String song = c.song.value.file;
    bool playStat = c.playStatus.value;
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
            child: SizedBox(
          width: 300,
          height: 300,
          child: Image(
            image: NetworkImage(imageUrl),
          ),
        )),
        SizedBox(
          height: 90,
          child: Column(
            children: const [],
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
            IconButton(
              onPressed: () => Play(playStat, song),
              icon: playStat
                  ? const Icon(Icons.pause)
                  : const Icon(Icons.play_arrow),
              iconSize: 45,
              color: Colors.white,
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

  void Play(bool playStat, String song) {
    final assetsAudioPlayer = AssetsAudioPlayer();

    playStat = !playStat;
    print(playStat);
    // assetsAudioPlayer.open(Audio.network(song));
  }
  //   Widget slider(BuildContext context){
  //   return SliderTheme(
  //     data: SliderTheme.of(context).copyWith(
  //       activeTrackColor: Colors.deepPurple.shade800,
  //       inactiveTrackColor: Colors.grey.shade700,
  //       trackHeight: 3.0,
  //     ),
  //     child: Slider(
  //       // value: ,
  //       onChanged: (value) => seekToSec(value.toInt());
  //     ),
  //   )
  // }
}
