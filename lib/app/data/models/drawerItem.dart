
import 'package:flutter/cupertino.dart';

class DrawerItem{
  String label;
  String icon;
  Widget page;
  DrawerItem(
      {
        required this.label,
        required this.icon,
        required this.page,
      });
}