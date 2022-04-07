import 'package:flo_app/styles/styles.dart';
import 'package:flutter/material.dart';

class TopBody extends StatelessWidget {
  const TopBody(this.index, {Key? key}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorSet.topBackGroundColor[index],
      child: Column(
        children: [
          const Padding(padding: EdgeInsets.only(top: 20)),
          Row(children: [
            IconButton(
              icon: const Icon(Icons.airplane_ticket),
              onPressed: () => {},
              splashRadius: Material.defaultSplashRadius / 2,
            ),
            const Expanded(child: SizedBox()),
            IconButton(
              icon: const Icon(Icons.mic),
              onPressed: () => {},
              splashRadius: Material.defaultSplashRadius / 2,
            ),
            IconButton(
              icon: const Icon(Icons.notifications_outlined),
              onPressed: () => {},
              splashRadius: Material.defaultSplashRadius / 2,
            ),
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () => {},
              splashRadius: Material.defaultSplashRadius / 2,
            ),
          ]),
          const Text(
            '잠들기 전 꿀잠 예약 잔잔한 인디음악',
            style: Style.songTitle,
          )
        ],
      ),
    );
  }
}
