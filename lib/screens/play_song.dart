import 'package:flo_app/widget/playing/playinfo.dart';
import 'package:flutter/material.dart';

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
    super.initState();
    apiCall();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Scaffold(
      appBar: const TitleBar(),
      body: PlayInfo(),
      backgroundColor: Colors.black,
    ));
  }
}

void apiCall() async {
  FecthData.fetch();
  // final song = <Song>[].obs;

  // try {
  //   var list = await
  //   if (list != null) {
  //     song.assign(list); // 배열 복사
  //   }
  // } finally {}
}
