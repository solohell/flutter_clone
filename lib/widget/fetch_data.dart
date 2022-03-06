import 'dart:convert';
import 'package:flo_app/controller/controller.dart';
import 'package:flo_app/models/song.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class FecthData {
  static final Controller controller = Get.put(Controller());
  static fetch() async {
    const endpoint =
        'grepp-programmers-challenges.s3.ap-northeast-2.amazonaws.com';
    const path = '/2020-flo/song.json';
    final url = Uri.https(endpoint, path);
    final response = await http.get(url);
    if (response.statusCode == 200) {
      Song list = Song.fromJson(jsonDecode(utf8.decode(response.bodyBytes)));
      controller.song.value = list;
      return list;
    } else {
      throw Exception('Failed to load post');
    }
  }
}
