import 'package:flutter/material.dart';

class TitleBar extends StatelessWidget implements PreferredSizeWidget {
  const TitleBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(children: <Widget>[
        IconButton(
            onPressed: () => {}, icon: const Icon(Icons.graphic_eq_rounded)),
        Stack(
          alignment: Alignment.center,
          children: <Widget>[
            IconButton(
                onPressed: () => {},
                icon: const Icon(Icons.e_mobiledata_outlined)),
          ],
        )
      ]),
      actions: [IconButton(onPressed: () => {}, icon: const Icon(Icons.menu))],
    );
  }
}
