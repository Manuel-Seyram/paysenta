import 'package:flutter/material.dart';

enum MenuItemType {
  home,
  share,
  settings,
}

class MenuItem {
  const MenuItem({
    required this.text,
    required this.assetPath, // Change 'image' to 'assetPath'
  });

  final String text;
  final String assetPath; // Change 'image' to 'assetPath'
}

abstract class MenuItems {
  static List<MenuItem> firstItems = [
    const MenuItem(text: 'Paysenta 1', assetPath: 'assets/itemcard.png'),
    const MenuItem(text: 'Paysenta 2', assetPath: 'assets/itemcard.png'),
    const MenuItem(text: 'Paysenta 3', assetPath: 'assets/itemcard.png'),
  ];

  static Widget buildItem(MenuItem item) {
    return Row(
      children: [
        Image.asset(item.assetPath), // Use 'assetPath' here
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Text(
            item.text,
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }

  static void onChanged(BuildContext context, MenuItemType item) {
    switch (item) {
      case MenuItemType.home:
        // Do something for home
        break;
      case MenuItemType.settings:
        // Do something for settings
        break;
      case MenuItemType.share:
        // Do something for share
        break;
    }
  }
}
