import 'package:flo_app/controller/mainController.dart';
import 'package:flo_app/widget/main/topBody.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopGestureMenu extends StatefulWidget {
  const TopGestureMenu({Key? key}) : super(key: key);

  @override
  State<TopGestureMenu> createState() => _TopGestureMenuState();
}

final PageController controller = PageController(initialPage: 0);
MainController c = Get.put(MainController());

class _TopGestureMenuState extends State<TopGestureMenu> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,

      child: PageView.builder(
        controller: controller,
        itemBuilder: (context, index) {
          return TopBody(index);
        },
        onPageChanged: (int page) {
          setState(() {
            c.currentPageIndex.value = page;
            print(c.currentPageIndex.value);
          });
        },
        itemCount: 7,
      ),

      // height: 300,
      // child: GestureDetector(
      //   onHorizontalDragUpdate: (details) {
      //     int sensitivity = 8;
      //     if (details.delta.dx > sensitivity) {
      //       c.topbody.value = 'left';
      //       // Right Swipe
      //     } else if (details.delta.dx < -sensitivity) {
      //       c.topbody.value = 'right';
      //       //Left Swipe
      //     }
      //   },
      // child: Obx(
      //   () => Text(c.topbody.value),
      // ),
    );
  }
}
