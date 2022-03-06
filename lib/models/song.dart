class Song {
  String singer;
  String album;
  String title;
  int duration;
  String image;
  String file;
  String lyrics;

  Song({
    required this.singer,
    required this.album,
    required this.title,
    required this.duration,
    required this.image,
    required this.file,
    required this.lyrics,
  });
  factory Song.fromJson(Map<String, dynamic> json) {
    return Song(
      singer: json["singer"],
      album: json["album"],
      title: json["title"],
      duration: json["duration"],
      image: json["image"],
      file: json["file"],
      lyrics: json["lyrics"],
    );
  }
}
