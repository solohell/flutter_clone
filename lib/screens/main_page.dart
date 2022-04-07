import 'package:flutter/material.dart';

import '../widget/main/main_view.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Stack(
              children: [
                const MainBody(),
                AppBar(
                    backgroundColor: Colors.black,
                    leading: IconButton(
                      icon: const Icon(Icons.airplane_ticket),
                      onPressed: () => {},
                      splashRadius: Material.defaultSplashRadius / 2,
                    ),
                    actions: [
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
              ],
            )
          ],
        ));
  }
}
