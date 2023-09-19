import 'package:flutter/cupertino.dart';

class PageData {
  Widget iconSelected;
  Widget icon;
  Widget page;
  int index;
  String? title;
  PageData(
      {
        required this.page,
        required this.index,
        required this.icon,
        required this.iconSelected,
        this.title,
      });
}