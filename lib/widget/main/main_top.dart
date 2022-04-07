import 'package:flo_app/controller/mainController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopGestureMenu extends StatelessWidget {
  TopGestureMenu({Key? key}) : super(key: key);
  final MainController c = Get.put(MainController());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.pink,
          child: SizedBox(
              height: 300,
              child: GestureDetector(
                onHorizontalDragUpdate: (details) {
                  int sensitivity = 8;
                  if (details.delta.dx > sensitivity) {
                    c.topbody.value = 'left';
                    // Right Swipe
                  } else if (details.delta.dx < -sensitivity) {
                    c.topbody.value = 'right';
                    //Left Swipe
                  }
                },
                // child: Obx(
                //   () => Text(c.topbody.value),
                // ),
              )),
        )
      ],
    );
  }
}
