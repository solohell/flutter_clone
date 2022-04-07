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
  var likeStatus = false.obs; //좋아요 status
  var playStatus = false.obs; // 재생 status
  var playTime = 0.obs; //현재 재생시간 value
  var audioplayer = AudioPlayer().obs; // 오디오플레이어를 담을 변수
  var currentplayTime = "00:00".obs; // 재생시간 표시를 위한 value
  var maxduration = 100.obs; // 전체 재생시간
  var maxdurationPlayTime = "00:00".obs; //전체 재생시간 표시를 위한 value
  List lyricsTimes = [].obs; // 재생시간 인덱싱을 위한 재생시간 목록
  var currentLyricsIndex = 0.obs; // 현재재생시간 인덱스
  var lyrics = {}.obs; // 시간,가사 형태로 담을 목록
  get title => null;
}
