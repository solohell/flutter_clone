import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';

import '../models/song.dart';

class Controller extends GetxController {
  var song = Song(
    singer: 'singer',
    album: 'album',
    title: 'title',
    duration: 0,
    image: '',
    file: 'file',
    lyrics: 'file',
  ).obs;
  var likeStatus = false.obs;
  var playStatus = false.obs;
  var playTime = 0.obs;
  var audioplayer = AudioPlayer().obs;
  var currentplayTime = "00:00".obs;
  var maxduration = 100.obs;
  var maxdurationPlayTime = "00:00".obs;
  List lyricsTimes = [].obs;
  var currentLyricsIndex = 0.obs;
  var lyrics = {}.obs;
  get title => null;
}
