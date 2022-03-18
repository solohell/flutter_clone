import 'package:get/get.dart';

import '../../controller/controller.dart';

void lyricsParse(String lyrics) {
  final Controller controller = Get.put(Controller());
  List lyrcisLsit = lyrics.split('\n');
  final exp = RegExp(r'[0-9]{2,3}:{0,1}');
  final Map<int, String> lyricsDict = {};
  for (final line in lyrcisLsit) {
    final match = exp.allMatches(line);
    final times = match.map((x) => x.group(0).toString()).join();
    final splitedTime = times.split(':');
    int minutes = int.parse(splitedTime[0]);
    int seconds = int.parse(splitedTime[1]);
    int millisec = int.parse(splitedTime[2]);
    int timekey = (minutes * 60 * 1000) + (seconds * 1000) + millisec;
    final lyrics = line.split(']')[1];
    // lyricsDict.add(lyrics);
    lyricsDict[timekey] = lyrics;
    controller.lyrics.value = lyricsDict;
    controller.lyricsTimes.add(timekey);
  }
}
