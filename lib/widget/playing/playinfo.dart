import 'package:flo_app/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PlayInfo extends StatelessWidget {
  const PlayInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Controller c = Get.put(Controller());
    return Column(
      children: [
        const SizedBox(
          height: 80,
        ),
        Center(
          child: Obx(() => Text(c.song.value.title)),
        ),
        const Padding(padding: EdgeInsets.only(top: 10)),
        Center(
          child: Obx(
            () => Text(c.song.value.singer),
          ),
        )

        //  Center(child: Obx() => Text(c.song.value.title))
        // child: Column(children: [Obx(()) => Text(c.song.value.title)]),
      ],
    );
  }
}
