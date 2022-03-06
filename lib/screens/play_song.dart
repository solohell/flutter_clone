import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/controller.dart';
import '../models/song.dart';
import '../widget/fetch_data.dart';

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
    return Scaffold(
        body: Container(
      child: Column(
        children: [
          Obx(() => Text(c.song.value.title)),
          Obx(() => Text(c.song.value.singer))
        ],
      ),
    )
        // child: Obx(() {
        //   // return ListView.builder(
        //   //   itemCount: c.song.length,
        //   //   itemBuilder: (BuildContext context, int index) {
        //   //     Text('hihihi')
        //   //    },
        //   // );
        // }),
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
