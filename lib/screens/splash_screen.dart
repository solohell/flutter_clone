import 'dart:async';

import 'package:flo_app/screens/play_song.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 2000), () {
      Get.to(() => const PlayView());
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const String imageLogoName = 'assets/FLO_Splash-Img.png';
    return WillPopScope(
      // 취소키방지
      onWillPop: () async => false,
      child: Container(
        child: (Image.asset(
          imageLogoName,
          fit: BoxFit.fill,
        )),
      ),
    );
  }
}
