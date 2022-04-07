import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/mainController.dart';
import '../widget/main/mainTop.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  MainController c = Get.put(MainController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: const [
            // Stack(
            // children: const [
            TopGestureMenu(),
            // Obx((() => AppBar(
            //       backgroundColor: c.currentPageIndex.value == 0
            //           ? ColorSet.topBackGroundColor0
            //           : c.currentPageIndex.value == 1
            //               ? ColorSet.topBackGroundColor1
            //               : c.currentPageIndex.value == 2
            //                   ? ColorSet.topBackGroundColor2
            //                   : c.currentPageIndex.value == 3
            //                       ? ColorSet.topBackGroundColor3
            //                       : c.currentPageIndex.value == 4
            //                           ? ColorSet.topBackGroundColor4
            //                           : c.currentPageIndex.value == 5
            //                               ? ColorSet.topBackGroundColor5
            //                               : ColorSet.topBackGroundColor6,
            //       bottomOpacity: 0.0,
            //       elevation: 0.0,
            //       leading: IconButton(
            //         icon: const Icon(Icons.airplane_ticket),
            //         onPressed: () => {},
            //         splashRadius: Material.defaultSplashRadius / 2,
            //       ),
            //       actions: [
            //         IconButton(
            //           icon: const Icon(Icons.mic),
            //           onPressed: () => {},
            //           splashRadius: Material.defaultSplashRadius / 2,
            //         ),
            //         IconButton(
            //           icon: const Icon(Icons.notifications_outlined),
            //           onPressed: () => {},
            //           splashRadius: Material.defaultSplashRadius / 2,
            //         ),
            //         IconButton(
            //           icon: const Icon(Icons.settings),
            //           onPressed: () => {},
            //           splashRadius: Material.defaultSplashRadius / 2,
            //         ),
            //       ],
            //     ))),
          ],
        )
        // ],
        );
  }
}
