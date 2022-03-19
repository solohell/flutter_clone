import 'package:flo_app/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/controller.dart';

class LyricsHeader extends StatelessWidget implements PreferredSizeWidget {
  LyricsHeader({Key? key}) : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(40);
  final Controller c = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 0,
      toolbarHeight: 50,
      backgroundColor: Colors.black,
      automaticallyImplyLeading: false,
      actions: [
        IconButton(
            splashRadius: Material.defaultSplashRadius / 2,
            onPressed: () => close(),
            color: Colors.white,
            icon: const Icon(Icons.close)),
      ],
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            c.song.value.title,
            style: Style.lyricsSongTitle,
          ),
          Text(
            c.song.value.singer,
            style: Style.lyricsSongSinger,
          )
        ],
      ),
    );
  }

  void close() {
    Get.back();
  }
}
