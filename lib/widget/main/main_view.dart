import 'package:flo_app/widget/main/main_top.dart';
import 'package:flutter/material.dart';

class MainBody extends StatelessWidget {
  const MainBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TopGestureMenu(),
    );
  }
}
