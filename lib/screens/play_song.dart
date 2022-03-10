import 'package:flo_app/widget/playing/playinfo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/controller.dart';
import '../models/song.dart';
import '../widget/fetch_data.dart';
import '../widget/playing/titleBar.dart';

class PlayView extends StatefulWidget {
  const PlayView({Key? key}) : super(key: key);
  @override
  State<PlayView> createState() => _PlayViewState();
}

class _PlayViewState extends State<PlayView> {
  @override
  void initState() {
    apiCall();
  }

  @override
  Widget build(BuildContext context) {
    final Controller c = Get.put(Controller());
    return const Scaffold(
      appBar: TitleBar(),
      body: PlayInfo(),
      backgroundColor: Colors.black,
    );
  }
}

void apiCall() async {
  final song = <Song>[].obs;
  try {
    var list = await FecthData.fetch();
    // print(list);
    if (list != null) {
      song.assign(list); // 배열 복사
    }
  } finally {}
}
