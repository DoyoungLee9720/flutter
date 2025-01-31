import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconMenu {
  final String title;
  final IconData iconData;

  IconMenu({required this.title, required this.iconData});
}

final List<IconMenu> iconMenu1 = [
  IconMenu(title: '이용권 구매', iconData: FontAwesomeIcons.ticket),
  IconMenu(title: '상품권 등록', iconData: FontAwesomeIcons.ticketSimple),
];
final List<IconMenu> iconMenu2 = [
  IconMenu(title: '설정', iconData: FontAwesomeIcons.gear),
  IconMenu(title: 'VIP 라운지', iconData: FontAwesomeIcons.crown),
  IconMenu(title: '이벤트', iconData: FontAwesomeIcons.calendarDays),
  IconMenu(title: '고객센터', iconData: FontAwesomeIcons.questionCircle),
  IconMenu(title: '이용안내', iconData: FontAwesomeIcons.info),
];
