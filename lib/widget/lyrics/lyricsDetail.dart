import 'package:flo_app/widget/lyrics/lyricsBody.dart';
import 'package:flo_app/widget/lyrics/lyricsHeader.dart';
import 'package:flutter/material.dart';

class LyricsPage extends StatelessWidget {
  const LyricsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: LyricsHeader(),
        body: Column(children: [LyricsBody()]));
  }
}
