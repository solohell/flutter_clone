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
  var playStatus = false.obs;
  var playTime = 0.obs;

  get title => null;
}
