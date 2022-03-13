void lyricsParse(String lyrics) {
  List lyrcisLsit = lyrics.split('\n');
  // print(lyrcisLsit);
  final exp = RegExp(r'[0-9]{2,3}:{0,1}');
  final lyricsDict = [{}];
  for (final line in lyrcisLsit) {
    final match = exp.allMatches(line);
    final times = match.map((x) => x.group(0).toString()).join();
    final splitedTime = times.split(':');
    double minutes = double.parse(splitedTime[0]);
    double seconds = double.parse(splitedTime[1]);
    double millisec = double.parse(splitedTime[2]);
    double timekey = minutes * 60.0 + seconds + millisec / 1000.0;
    final lyrics = line.split(']')[1];
    // lyricsDict.add(lyrics);
    print(timekey);
  }
}
