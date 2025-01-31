import 'package:flutter/material.dart';
import 'package:music_design/models/icon_menu.dart';

class MyInfoCard extends StatelessWidget {
  final List<IconMenu> iconlist;
  const MyInfoCard({required this.iconlist, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: List.generate(
          iconlist.length,
          (index) => CardIconContainer(iconMenu: iconlist[index]),
        ),
      ),
    );
  }
}

class CardIconContainer extends StatelessWidget {
  final IconMenu iconMenu;
  const CardIconContainer({required this.iconMenu, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          const SizedBox(
            width: 10,
            height: 60,
          ),
          Icon(
            iconMenu.iconData,
            size: 20,
            color: Colors.grey,
          ),
          const SizedBox(width: 10),
          Text(
            iconMenu.title,
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
