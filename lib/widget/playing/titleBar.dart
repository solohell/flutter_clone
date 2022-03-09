import 'package:flutter/material.dart';

class TitleBar extends StatelessWidget implements PreferredSizeWidget {
  const TitleBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      titleSpacing: 0,
      backgroundColor: Colors.black,
      title: Row(children: <Widget>[
        IconButton(
          onPressed: () => {},
          icon: const Icon(Icons.graphic_eq_rounded),
          splashRadius: Material.defaultSplashRadius / 2,
        ),
        Stack(
          alignment: Alignment.center,
          children: <Widget>[
            IconButton(
                onPressed: () => {},
                icon: const Icon(Icons.explicit_rounded),
                splashRadius: Material.defaultSplashRadius / 2),
          ],
        )
      ]),
      actions: [
        IconButton(
            onPressed: () => {},
            splashRadius: Material.defaultSplashRadius / 2,
            icon: const Icon(
              Icons.keyboard_arrow_down,
              size: 30,
            ))
      ],
    );
  }
}
